class SliderType
{
    static Gallery = new SliderType('Gallery');
    static Nav = new SliderType('Nav');
    static Link = new SliderType('Link');

    constructor(name)
    {
        this.name = name;
    }
    toString()
    {
        return `Direction.${this.name}`;
    }
}

class Slider
{
    constructor(name, type, f)
    {
        this.sliderContainer = document.querySelector(name);
        this.innerSlider = this.sliderContainer.querySelector('.inner-slider'); 
        this.slides = this.innerSlider.querySelectorAll('.slide');       
        this.pressed = false;
        this.dragged = false;
        this.clickedSlide = 0;
        this.innerStartX;
        this.isClicking = false;
        this.clickFunction = f;
        this.sliderType = type;
    }    
}

class Point
{
    constructor(x,y)
    {
        this.x = x;
        this.y = y;
        this.distanceTo = (point) =>
        {
            const distance = Math.sqrt((Math.pow(point.x-this.x,2))+(Math.pow(point.y-this.y,2)));
            return distance;
        }
    }
}

let currentBullet = 0;
let distanceThreshold = 20; //if user has dragged this much, don't click
let focusedSlide = 0;
let backedOut = false;
let isZoomed = false;
let startPos = new Point(0,0); //touch start. multi-touch on dual carousel currently not supported
let isScrollingSet = false;
let isScrolling = false;
const narrowThreshold = 550; //px
let touchDuration = 0;
const durationThreshold = 30; //centiseconds?
let touchTimer;
const snapThreshold = 0.4;

let isPointerActive = false;
let allowClick = true;

window.addEventListener('keydown', e =>
{
    if(e.key === 'Escape' && isZoomed)
    {
        zoomOut();
        return;
    }
});

function setUpSliderListeners(s)
{
    s.sliderContainer.addEventListener('wheel', (e) =>
    {        
        if(Math.abs(e.deltaY) > Math.abs(e.deltaX)) //scroll vertically as usual
        {
            return;
        }
        s.dragged = true;
        s.innerSlider.classList.toggle('dragging', true);
        s.sliderContainer.classList.toggle('dragging', true);

        if(s.innerSlider.style.left == "")
        {
            s.innerSlider.style.left = "0px";
        }
        const posStr = s.innerSlider.style.left;
        const oldPos = Number(posStr.substring(0, posStr.length - 2)); //- "px"
        s.innerSlider.style.left = `${e.pageX - s.innerStartX}px`;
        const newPos = `${oldPos - e.deltaX}px`;
        s.innerSlider.style.left = newPos;
        checkBoundary(s);
        e.stopPropagation();
        e.preventDefault();

        if(s.sliderType != SliderType.Nav)
        {
            const centeredSlide = getCenteredSlide(s, e);
            setActiveBullet(s, centeredSlide);
            focusedSlide = centeredSlide;
        }

        if(s.sliderType == SliderType.Link)
        {
            window.clearInterval(auto);
        }
    });

    s.sliderContainer.addEventListener('pointerdown', (e) => 
    {
        isPointerActive = true;
        if(s.sliderType == SliderType.Link)
        {
            window.clearInterval(auto);
        }
        
        touchStart(s, e);
    }); 
    s.sliderContainer.addEventListener('pointermove', e => dragMove(s, e));
    s.sliderContainer.addEventListener('click', (e) =>
    {
        if(!allowClick)
        {
            return;
        }
        const bnRect = document.querySelector('.bullet-nav').getBoundingClientRect();
        if(contains(e.x,e.y,bnRect))
        {
            return;
        } 
        if(s.sliderType == SliderType.Link)
        {
            return;
        }
        if(isZoomed)
        {
            zoomOut();
        }
        else
        {
            galZoom(focusedSlide);
        }
    });
}

function setUpNavBulletListeners(s, f)
{
    const navLinks = s.sliderContainer.querySelectorAll('.nav-link');
    navLinks.forEach((bullet,i) => 
    {
        bullet.addEventListener('pointerdown', (e) => 
        {
            s.dragged = false;         
            s.innerSlider.classList.toggle('dragging', false);
            s.sliderContainer.classList.toggle('dragging', false);

            f(i);
            e.stopPropagation();
        });
        bullet.addEventListener('pointerup', (e) => 
        {
            e.stopPropagation();
        });
    });
}

function setUpSliderFocus(container, s)
{
    document.addEventListener('focusin', () =>
    {
        if(backedOut)
        {
            backedOut = false;
            getPreviousFocus(container).focus();
            return;
        }
        if(document.activeElement === container)
        {
            focusedSlide = Math.min(Math.max(focusedSlide,0),s.slides.length - 1);
            const sl = s.sliderType == SliderType.Link ? 
                s.slides[focusedSlide].querySelector('a') : s.slides[focusedSlide]; 
            sl.focus({preventScroll: true});
        }
    });
}

function getPreviousFocus(container)
{
    const focusable = document.querySelectorAll('button, [href], input, select, textarea, [tabindex]:not([tabindex=\"-1\"])');
    
    const index = Array.prototype.indexOf.call(focusable, container) - 1;
    const f = focusable[Math.max(index, 0)];
    return f;
}

function keyboardNavigation(e, s)
{
    if(s.sliderType === SliderType.Gallery && e.key === 'Enter')
    {
        allowClick = false;
        setTimeout(() => { allowClick = true}, 100); //prevents simultaneous key & click event
        if(isZoomed)
        {
            zoomOut();
        }
        else
        {
            galZoom(focusedSlide);
        }
        return;
    }
    
    if(e.key !== 'Tab' && e.key !== 'ArrowRight' && e.key !== 'ArrowLeft')
    {   
        return;
    }

    if(s.sliderType == SliderType.Link)
    {
        window.clearInterval(auto);
    }


    let dir = ' ';
    if(e.key === 'Tab' && e.shiftKey || e.key === 'ArrowLeft')
    {
        dir = 'left';
    }  
    else if(e.key === 'Tab' || e.key === 'ArrowRight')
    {
        dir = 'right';
    }
    else
    {
        return;
    }
    dir === 'left' ? focusedSlide-- : focusedSlide++;
    const inRange = focusedSlide >= 0 && focusedSlide < s.slides.length;
    if(!inRange)
    {
        focusedSlide = Math.min(Math.max(focusedSlide,0),s.slides.length - 1);
        if(e.key === 'Tab' && e.shiftKey)
        {
            backedOut = true;
            //default behavior not prevented, so the doubleCarousel parent
            //is focused on. This reactivates :focused-visible.
            //Then, the document's focusin listener code on l. 56 activates.
        }
        return;
    }
    if(s.sliderType === SliderType.Gallery && isZoomed)
    {
        galZoom(focusedSlide);
    }    
    e.preventDefault();
           
    s.innerSlider.classList.toggle('dragging', true);
    s.sliderContainer.classList.toggle('dragging', true);

    const sl = s.sliderType == SliderType.Link ? 
         s.slides[focusedSlide].querySelector('a') : s.slides[focusedSlide];
    sl.focus({preventScroll: true});
    moveInnerSlider(s, focusedSlide);
    setActiveBullet(s, focusedSlide);
    return;
}

function setActiveBullet(s, i)
{
    const bullets = s.sliderContainer.querySelectorAll('.nav-link');
    bullets[currentBullet].classList.remove('active');
    bullets[i].classList.add('active');
    currentBullet = i;
}

function moveInnerSlider(s,i)
{    
    const conL = s.sliderContainer.offsetLeft;
    const conW = s.sliderContainer.offsetWidth;
    const img = s.slides[i].querySelector('img');
    const imgL = s.slides[i].offsetLeft;
    const imgW = img.offsetWidth;
    const offset = (conW - imgW) * 0.5 + conL;
    let newPosX = (conL - imgL) + offset;
    newPosX = Math.min(newPosX, 0);
    newPosX = Math.max(newPosX, -1 * (s.innerSlider.offsetWidth - conW));
    s.innerSlider.style.left = newPosX + 'px';
}

function contains(x,y,r)
{
    if(x >= r.left &&
        x <= r.right &&
        y >= r.top &&
        y <= r.bottom)
    {
        return true;
    }
    return false;
}

function touchStart(s,e)
{   
    s.dragged = false; 

    if(isZoomed)
    {
        return;
    }
    activeSlider = s.sliderType == SliderType.Nav ? 1 : 0;

    const x = e.x;
    const y = e.y;
    
    const bnRect = document.querySelector('.bullet-nav').getBoundingClientRect();
    if(contains(x,y,bnRect))
    {
        return;
    } 

    touchTimer = setInterval(() => 
    {
        touchDuration += 1;
    }, 10);

    s.slides.forEach((slide, i) =>
    {
        const rect = slide.getBoundingClientRect();
        if(contains(x,y,rect))
        {
            s.clickedSlide = i;
        }
    });

    s.pressed = true;
    s.innerStartX = e.x - s.innerSlider.offsetLeft; //offset is 0?
    startPos = new Point(e.pageX, e.pageY);
    isScrollingSet = false;
    isScrolling = false;
    
    e.stopPropagation();    
};

const dragMove = (s, e) =>
{
    if(!s.pressed)
    {
        return;
    }
    if(e.pointerType === "touch" && !isScrollingSet)
    {
        const xDiff = Math.abs(startPos.x - e.pageX);
        const yDiff = Math.abs(startPos.y - e.pageY);   
        isScrollingSet = true;
        isScrolling = yDiff > xDiff;
    }
    if(isScrolling)
    {
        return;
    }
    if(isZoomed || !s.pressed)
    {
        return;
    }
    s.dragged = true;
    s.innerSlider.classList.toggle('dragging', true);
    s.sliderContainer.classList.toggle('dragging', true);
    s.innerSlider.style.left = `${e.pageX - s.innerStartX}px`;
    checkBoundary(s);
    e.stopPropagation();
    e.preventDefault();
};

function clickEnd(s, e)
{
    if(isZoomed || !s.pressed)
    {
        return;
    }
    const newPos = new Point(e.pageX, e.pageY);
    const diff = startPos.distanceTo(newPos);
    
    if(s.sliderType == SliderType.Link)
    {
        s.innerSlider.classList.toggle('dragging',false);
        s.sliderContainer.classList.toggle('dragging',false);
    }
    else
    {
        sliders.forEach((sl)=>
        {
            sl.innerSlider.classList.toggle('dragging',false);
            sl.sliderContainer.classList.toggle('dragging',false);
        });
    }

    if(diff < distanceThreshold /*&& touchDuration < durationThreshold*/)
    {
        if(s.sliderType != SliderType.Link)
        {            
            s.clickFunction(s.clickedSlide);
        }
    }
    else
    {
        if(s.sliderType != SliderType.Nav)
        {
            const centeredSlide = getCenteredSlide(s, e);
            setActiveBullet(s, centeredSlide);
            focusedSlide = centeredSlide;
            const isNarrow = window.innerWidth <= narrowThreshold
                && window.innerWidth < window.innerHeight;
            if(s.sliderType == SliderType.Link || isNarrow)
            {
                moveInnerSlider(s,centeredSlide); 
           }
        }        
    }
    s.dragged = false;
    s.pressed = false;
    if(s.sliderType != SliderType.Link)
    {
        e.stopPropagation();
    }
    
    touchDuration = 0.0;
    clearInterval(touchTimer);
}

function getCenteredSlide(s, e)
{
    const conRect = s.sliderContainer.getBoundingClientRect();
    const offset = e.pageX > startPos.x ? snapThreshold : 1.0 - snapThreshold;
    const center = conRect.width * offset + conRect.left;
    
    for(let i = 0; i < s.slides.length; ++i)
    {
        const rect = s.slides[i].getBoundingClientRect();
        if(center > rect.left && center < rect.right)
        {
            return i;
        }
    }    
    if(center < rect.left)
    {
        return 0;
    }
    if(center > rect.right)
    {
        return s.slides.length - 1;
    }
    return 0;
}

function checkBoundary (s)
{
    const outer = s.sliderContainer.getBoundingClientRect();
    const inner = s.innerSlider.getBoundingClientRect();

    if (inner.left > outer.left)
    {
        s.innerSlider.style.left = "0px";
    }
    if (inner.right < outer.right)
    {
        s.innerSlider.style.left = `${outer.width - inner.width}px`;
    }
}
function galZoom(i)
{
    focusedSlide = i;
    const img = new Image();
    //zoom in on lores img first
    img.src = loResImgDir + String(i).padStart(2, '0') + '.jpg';
    zoomImage.setAttribute('src', img.src);
    zoomContainerContainer.classList.add('visible');
    isZoomed = true;
    zoomIndex = i;
    //sliders[0].slides[i].setAttribute('aria-expanded', true);
    sliders[0].slides[i].setAttribute('data-btn-expanded', true);
    sliders[0].slides[i].setAttribute('aria-labelledby', 'zoom-out-text');
    document.querySelector('body').classList.add('no-scroll');

    //switch to hires img as soon as loaded
    img.src = hiResImgDir + String(i).padStart(2, '0') + '.jpg';
    img.onload = () =>
    {
        if(i == focusedSlide) //accounts for slides changing while image is loading
        {
            zoomImage.setAttribute('src', img.src);
        }
    };
}
function zoomOut()
{     
    zoomContainerContainer.classList.remove('visible'); 
    //sliders[0].slides[focusedSlide].setAttribute('aria-expanded', false);
    sliders[0].slides[focusedSlide].setAttribute('data-btn-expanded', false);
    sliders[0].slides[focusedSlide].setAttribute('aria-labelledby', 'label-' + focusedSlide + ' alt-' + focusedSlide);
    sliders[0].slides[focusedSlide].focus({preventScroll:true});
    const b = document.querySelector('body');
    b.classList.remove('no-scroll');
    isZoomed = false;
};