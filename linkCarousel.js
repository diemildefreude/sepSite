const slider = new Slider('.link-carousel .gallery-slider', SliderType.Link, navMove);
const slideCount = slider.slides.length;
let autoIndex = 0;
//let autoSlideOn = true;
const autoInterval = 4000; //ms
autoSlide();
let auto = window.setInterval(autoSlide, autoInterval);
//let auto;
//window.setTimeout(()=>{auto = window.setInterval(autoSlide, autoInterval);}, 0);

window.addEventListener('pointerup', (e) => 
{   
    if(e.button != 0) return;        
    clickEnd(slider, e);    
    dragCount = 0;
});

setUpSliderListeners(slider);
const sliderContainer = document.querySelector('.carousel-container');
setUpSliderFocus(sliderContainer, slider);
sliderContainer.addEventListener('keydown', e => keyboardNavigation(e, slider));

setUpNavBulletListeners(slider, navMove);

function autoSlide()
{
    moveInnerSlider(slider, autoIndex);
    setActiveBullet(slider, autoIndex);
    autoIndex = ++autoIndex % slideCount;
}

function navMove(i)
{     
    moveInnerSlider(slider, i);
    setActiveBullet(slider, i);    
    focusedSlide = i; 
    window.clearInterval(auto);
    //autoSlideOn = false;
}
