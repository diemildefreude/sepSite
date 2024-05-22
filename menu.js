let isMenuOpen = false;
const menuList = document.querySelector('.js-menu');
const menuButton = document.querySelector('.js-menu-button');
let menuButtonHtml = menuButton.innerHTML;
const body = document.querySelector('body');

menuButton.addEventListener('click', toggleMenu);

const header = document.querySelector('.js-header');

function toggleMenu()
{
    isMenuOpen = !isMenuOpen;
    if(isMenuOpen)
    {
        menuButton.classList.add('mobile-menu-open');
        menuList.classList.add('menu-visible');
        body.classList.add('no-scroll');
    }
    else
    {
        menuButton.classList.remove('mobile-menu-open');
        menuList.classList.remove('menu-visible');
        body.classList.remove('no-scroll');
    }    
    menuButton.setAttribute('aria-expanded', isMenuOpen);
}