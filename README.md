# sepSite
website for artist stephan e perez

My first complete website. It's made for me to use, so no cms needed.

dependencies
----------
php 8.2 and phpmailer.

php/sql
----------
For archive pages (in the 'archives' and 'events' folders) the main text body is typed directly in the php file that includes the "archive" template. The other data (title, dates, venue name, photo alts) are stored in the sql database. Photo files are numbered already (eg. '00.jpg') so there are no file names in the database. 

js
----------
Instead of adopting a convenient, ready-made thing like swipe.js or slick-slider, I made an image carousel in vanilla js. The bulk of the code is in slider.js/slider.css and it has two implementations specified in linkCarousel.js/.php and dualCarousel.js/.php. The slider is very full featured with a11y considerations like having windows narrator reading the alt text when tabbing through the image. With narrator off, left/right keys work as well. Horizontal swiping/scrolling can be used to navigate the slider as well. Does not currently support multiple instances of a carousel on a page, just because I haven't needed that, but you could change this by giving each instance unique IDs for its elements. Size of the slider is set in slider.css root.

setup
----------
1) set up a local server using something like [Xampp](https://www.apachefriends.org/download.html)
2) start the local server. In Xampp, this is done by pressing the start buttons for Apache and MySQL.
3) clone the repository to a folder within your localhost directory. (In the case of Xampp, probably c:/xampp/htdocs)
4) open phpadmin. In Xampp: MySql>Admin
5) create a database called sep_site. You may use a different name but it must match the $database variable in database.php.
6) with sep_site selected in phpadmin, go to "import". Drag and drop sep_site.sql
7) the site should be functional now. Open it from localhost/path, where localhost reflects the htdocs folder. So if the folder is c:/xampp/htdocs/sepsite, enter localhost/sepsite into the address bar
