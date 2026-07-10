# sepSite
website for artist stephan e perez

My first complete website. It's made for me to use, so no cms needed.

dependencies
----------
php 8.2 and phpmailer.

php/sql
----------
For archive pages (in the 'archives' and 'events' sections) the main text body are typed in an html document that includes the "archive" template. The other data (title, dates, venue name, photo alts) are stored in an sql database. An sql file is included in the root. Photo files are numbered already (eg. '00.jpg') so there are no file names in the database. 

js
----------
Instead of adopting a convenient, ready-made thing like swipe.js or slick-slider, I made an image carousel in vanilla js. The bulk of the code is in slider.js/slider.css and it has two implementations specified in linkCarousel.js/.php and dualCarousel.js/.php. The slider is very full featured with a11y considerations like having windows narrator reading the alt text when tabbing through the image. With narrator off, left/right keys work as well. Clicking images on the dualCarousel zooms in on them, and if you further zoom in on them (with wheel/pinch) and then touch/click to zoom out the page will be restored to 100% scaling. Does not currently support multiple instances of a carousel on a page, just because I haven't needed that. Size of the slider is set in slider.css root.
