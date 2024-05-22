let zoomIndex = 0;
let sliders = [];
let activeSlider = 0;
const zoomContainerContainer = document.querySelector('.zoom-container-container');
const zoomContainer = document.querySelector('.zoom-container');
const zoomImage = document.querySelector('.zoom-image');
const srcEnd = '/hires/00.jpg';
const srcRoot = zoomImage.getAttribute('src').slice(0, -1 * srcEnd.length); 
const hiResImgDir = srcRoot + '/hires/';
const loResImgDir = srcRoot + '/lores/';

let startTouches;
let zoomScale = 1.0;
//let zoomWidth = zoomImage.offsetWidth;
//let zoomHeight = zoomImage.offsetHeight;
let zoomTransX = 0.0;
let zoomTransY = 0.0;
const zoomScaleMult = 0.02;
//console.log(zoomOgWidth, zoomOgHeight);

sliders.push(new Slider('.dual-carousel .gallery-slider', SliderType.Gallery, galZoom));
sliders.push(new Slider('.dual-carousel .nav-slider', SliderType.Nav, doubleNavMove));

zoomContainer.addEventListener('pointerup', (e) => 
{
    console.log("pointer up");
    if(e.button == 0)
    {
        zoomOut();
    }
    
    zoomScale = 1.0;
    zoomTransX = 0.0;
    zoomTransY = 0.0;
    zoomContainer.style.setProperty('--zoom-scale', zoomScale);
    zoomContainer.style.setProperty('--zoom-origin-x', `${50}%`);
    zoomContainer.style.setProperty('--zoom-origin-y', `${50}%`);
    
});
zoomContainer.addEventListener('wheel', (e) =>
{
    console.log("wheel");
    zoomOverride(e);
});
zoomContainer.addEventListener('touchstart', (e)=>
{
    if(e.touches.length == 2)
    {
        startTouches = e.touches;
    }
});

//zoomContainer.addEventListener('touchmove', handleTouch);

function handleTouch(e)
{
    console.log(e.touches.length);
    if(e.touches.length == 2)
    {
        console.log("doubleTouch");
        e.preventDefault();
    }
    else
    {
        console.log("singleTouch");
    }
}

window.addEventListener('pointerup', (e) => 
{   
    if(e.button != 0) return; 
    isPointerActive = false;
    allowClick = false;   
    setTimeout(() => { allowClick = true}, 100); //prevents simultaneous click & pointerup/down
    clickEnd(sliders[activeSlider], e); //click is needed for narrator
    dragCount = 0;
});

for(let i = 0; i < sliders.length; i++)
{
    setUpSliderListeners(sliders[i]);
}
setUpNavBulletListeners(sliders[0], doubleNavMove);

const doubleContainer = document.querySelector('.carousel-container');

setUpSliderFocus(doubleContainer, sliders[0]);

doubleContainer.addEventListener('keydown', e => keyboardNavigation(e, sliders[0]));

function doubleNavMove(i)
{
    moveInnerSlider(sliders[0], i);
    moveInnerSlider(sliders[1], i);
    setActiveBullet(sliders[0], i);    
    focusedSlide = i;
}

function zoomOverride(e)
{
    const rect = zoomContainer.getBoundingClientRect();
    
    if(e.ctrlKey) 
    {
        const cursorX = e.clientX - rect.left;
        const cursorY = e.clientY - rect.top;

        const newScale = Math.max(1.0, zoomScale - e.deltaY * zoomScaleMult);
        
        const originX = (cursorX / rect.width) * 100 ;
        const originY = (cursorY / rect.height) * 100;
        //console.log(cursorX, rect.width, originX);
        zoomContainer.style.setProperty('--zoom-origin-x', `${originX}%`);
        zoomContainer.style.setProperty('--zoom-origin-y', `${originY}%`);
        zoomContainer.style.setProperty('--zoom-scale', zoomScale);

        
        e.stopPropagation();
        e.preventDefault();           
        zoomScale = newScale;
    }
}