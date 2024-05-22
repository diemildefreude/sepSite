-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 19, 2024 at 02:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sep_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `alt_addiction`
--

CREATE TABLE `alt_addiction` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_addiction`
--

INSERT INTO `alt_addiction` (`id`, `alt`) VALUES
(0, 'event flyer. Shows some objects from the visual sound programming language, pure data'),
(1, 'eric beyeler wears a red baseball cap and sits at a table full of effect boxes and pedals, looking down at the electric guitar in his hands. Next to him, stephan e perez plays viola while looking down at a computer'),
(2, 'eric and stephan, in position for the performance, smile at each other'),
(3, 'eric plays guitar and stephan does something on the computer. In the foreground, the audience is seated, listening'),
(4, 'screen of the laptop showing some colorful boxes connected by wires in Pure Data'),
(5, 'eric beyeler\'s guitar pedals, in a variety of shapes and colors, lined up on a table'),
(6, 'sign in front of the venue. It says \'Ftarri\' S. Elliot Perez Eric Beyeler 2000 yen 8:00'),
(7, 'fragment of the score for \'addiction\', showing various note ranges and indications for strings, dynamics and articulation. also the words \'Moments of calm and wild\' and \'PULSE\' can be seen'),
(8, 'fragment of the score for \'addiction\', showing a note ranges and indications for strings, dynamics and articulation. also the words \'more louder, faster envelopes\' and \'cue 12\' can be seen'),
(9, 'fragment of the score for \'addiction\', showing various note ranges, cue numbers and indications for strings, dynamics and articulation. The cues have names: gazeplay_1, voiceplay_1, voiceplay_2, speechplay_ki'),
(10, 'fragment of the score for \'addiction\', showing various note ranges and indications for strings, dynamics and articulation. The cues have names: deepplay, deep pierce, gushtempo, skinplay_4. Also the words \'As at 2, but longer, gentler. More spaces(rests)');

-- --------------------------------------------------------

--
-- Table structure for table `alt_cameralucida`
--

CREATE TABLE `alt_cameralucida` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_cameralucida`
--

INSERT INTO `alt_cameralucida` (`id`, `alt`) VALUES
(0, 'event flyer for \'camera lucida\'. Has the subtitle \'Marginal Man 11\'. Graphical elements showing a midi violin, jenga blocks, an eye, a hand, and various letters and dotted lines.'),
(1, 'projection on the black, planked walls of Subterranean. The image shows previously recorded event guests, one of them looking towards the camera'),
(2, 'disposable camera shot showing stephan e perez sitting in front of a mirror, a webcam on his head and a midi violin on his knee.'),
(3, 'stephan playing midi violin, a webcam on his head. In the background, an event guest stands, hands on hips, looking at the wall projection'),
(4, 'stephan plays midi violin while standing in front of an event guest. The projection in the background shows older footage'),
(5, 'stephan plays midi violin while looking at an event guest who dances with his eyes closed'),
(6, 'stephan holds the midi violin as an event guest reaches out to pluck the strings'),
(7, 'head camera footage is projected on the planked wall'),
(8, 'an event guest looks surprised while pointing his phone camera at stephan, who is facing the guest playing midi violin'),
(9, 'akari brandishes a bouquet of kasumi grass in each hand as she walks around a small table with a white tablecloth. She wears a white dress and colorful scarf. Two event guests stand behind her watching with their hands behind them.'),
(10, 'akari stands in front of the table, looking to the side'),
(11, 'the table has the following items strewn about it: rope, apples, crumpled paper, books tied into the rope, flowers, a mirror. The feet of event guests are seen standing around these items.'),
(12, 'a hand holds the explanation for the jenga game in Japanese'),
(13, 'akari holds the midi violin stable on stephan\'s knee as he writes something on a jenga block'),
(14, 'akari\'s laced hands stack jenga blocks into a tower. there are a few pencils next to the tower and a guest stands nearby watching'),
(15, 'akari and a guest hold and read a block together'),
(16, 'an event guest pulls a block at an advanced stage'),
(17, 'akari leans over the small mirror and stares into it'),
(18, 'disposable camera shot of stephan cutting akari\'s dress with a pair of scissors'),
(19, 'the rope is suspended across the room. one of the event guests is using one of its ends to tie up stephan, who laughs. another guest takes a photo with her phone'),
(20, 'the hands of akari and an event guest folding origami paper'),
(21, 'akari holds a complete origami crane'),
(22, 'a disposable camera sits next to some stray jenga blocks on a table, the jenga tower in the background. The camera has a tag which urges the event guests, in Japanese, to take phots during the event');

-- --------------------------------------------------------

--
-- Table structure for table `alt_cartography`
--

CREATE TABLE `alt_cartography` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_cartography`
--

INSERT INTO `alt_cartography` (`id`, `alt`) VALUES
(0, 'A crowd sits in a dark gallery space. Ceiling lights illuminate the left part of the wall, which is adorned with photos and map fragments. The crowd watches as the performer (Stephan E. Perez) points his arms, with cameras attached, towards the photos and maps. He looks towards the right side of the wall, where the two cameras\' feed is being projected in the shape of two overlapping circles, blurred at the edges. The left circle shows a young boy and two even younger girls. The right circle shows two adults in front of a landscape.'),
(1, 'The performer points his hands, with cameras taped inside of the palms, towards the wall. The wall has photos on it taken in Austria and Poland and a map of Austria'),
(2, 'The performer leans forward to take a map fragment from one of the audience members in the first row.'),
(3, 'Wall projection in the shape of two overlapping circles, blurred at the edges. The left circle shows a map with some city names circled in marker. The right circle shows a photo of four women of varying ages.'),
(4, 'Wall projection in the shape of two overlapping circles. The left shows two fingers, close to the camera. The right shows a photo of a small boy, a large man, and three women of various ages.'),
(5, 'The performer smiles and points his hands, with cameras taped inside of the palms, towards the wall. The wall has photos on it and map fragments of various U.S. states and cities. The perpendicular wall behind the performer has a complete world map with some lines and circles drawn in marker.'),
(6, 'The performer stands in front of the dual-circle projection and looks to the side with this hands in front of his waist. The projection shows a sideways view of someone sitting in a chair.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_chikuchikushinshin`
--

CREATE TABLE `alt_chikuchikushinshin` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_chikuchikushinshin`
--

INSERT INTO `alt_chikuchikushinshin` (`id`, `alt`) VALUES
(0, 'event flyer for \'chikuchikushinshin\'. it shows a dimly-lit traditional japanese house with ripped rice-paper doors. Through the doors you can see takumi-chan and stephan, standing and talking.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_eurydice`
--

CREATE TABLE `alt_eurydice` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_eurydice`
--

INSERT INTO `alt_eurydice` (`id`, `alt`) VALUES
(0, 'cg image of Eurydice\'s well, a rectangular well with irregular, earthen walls, partly in shadow, partly lit. Four transparent, bluish ice-like spheres float within it, one of them glowing brightly.'),
(1, 'title displayed in Greek with the English \'eurydice\' below it.'),
(2, 'cg image of a rectangular well with irregular, earthen walls, partly in shadow, partly lit. Three metallic, purple lyres float within it, illuminating shadowy corners of the well with a gentle glow'),
(3, 'a lyre, a pan-flute, a glowing fire-ball, a glowing ice-sphere and a smaller, bright-glowing blue sphere float in space. In the background, there is a large star or sun in the center and several smaller or more distant ones around it.'),
(4, 'paper instruction sheet used at the exhibit. It says: \'THIS PIECE IS INTERACTIVE. Please try using the touch display. Hints: -You can throw objects by dragging and releasing them. -If you touch objects for a long time, they will transform. -The sound of objects will change depending on how fast you drag or throw them.\''),
(5, '\'Eurydice\' is displayed on a touch monitor on a platform inside of the art gallery, BUoY. Behind the monitor is a stone sphere on the ground, about a meter high. On the wall behind it, the Eurydice feed is being projected.'),
(6, 'View from behind the monitor platform. The stone sphere is seen in the foreground. In the distance, three people are standing and conversing in front of the cafe space'),
(7, '\'Eurydice\' is displayed on a touch monitor on a platform inside of the art gallery, BUoY. Two pairs of headphones are next to the monitor. To the left and behind the monitor there is a beige sculpture made of welded metal tables and chairs. On the wall behind it, the Eurydice feed is being projected.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_forakari`
--

CREATE TABLE `alt_forakari` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_forakari`
--

INSERT INTO `alt_forakari` (`id`, `alt`) VALUES
(0, 'The performers, stephan e. perez and akari, sit, each on a chair in front of a small desk, facing away from the audience towards a bright wall projection. Stephan  is playing a MIDI violin with a bow and Akari is playing a MIDI keyboard with some knobs and levers. The projection shows an abstract, granular black and white pattern, blended with photos of people\'s faces and a bathroom tub.'),
(1, 'Stephan and Akari are seated on their chairs and face each other. The room lights are on. The projection shows a picture of a mouse in a box.'),
(2, 'In the darkened room, Akari pushes a small lever on the MIDI keyboard while looking at the bright projection. Part of a face can be seen on the left side of the abstract pattern.'),
(3, 'The performers sit, each on a chair in front of a small desk, facing away from the audience towards a bright wall projection. Stephan is playing a MIDI violin with a bow and a computer is in front of him. Akari is playing a MIDI keyboard with some knobs and levers. The projection is too bright to make out'),
(4, 'The performers sit, each on a chair in front of a small desk, facing away from the audience towards a bright wall projection. Stephan is playing a MIDI violin with a bow and a computer is in front of him. Akari is playing a MIDI keyboard with some knobs and levers. The projection is too bright to make out');

-- --------------------------------------------------------

--
-- Table structure for table `alt_geometry`
--

CREATE TABLE `alt_geometry` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_geometry`
--

INSERT INTO `alt_geometry` (`id`, `alt`) VALUES
(0, 'The performer, stephan e perez, sits at a small folding desk and lights a cigar with a match. The light from the match illuminates his face and upper body. A microphone is taped to his wrist'),
(1, 'The performer sits, further from the table  and reads a book'),
(2, 'Lit from a side lampt, the performer sits at the desk and writes with a pencil'),
(3, 'Closeup of the folding desk. On top of it are a glass on a red coaster, a large and small match box, a tin lid used as an ashtray, a stack of postcards, a red pencil and a ceramic plate with a partly-eaten carrot.'),
(4, 'Over-the-shoulder viewe of the performer typing a text message while holding a partly-eaten carrot. A small microphone is taped to his hand'),
(5, 'Smoke from the lit cigar ascends as the performer leans over to pour rum into the glass.'),
(6, 'The performer plays a viola with a bow'),
(7, 'The performer hugs a person in a black puffy cloat'),
(8, 'A wall projection of the performer\'s sillhouette. The sillhouette is filled with multicolored pixels. The sillhouette\'s arm is raised to balance two circles, one of which is solid, the other filled with larger multicolored squares.'),
(9, 'The performer plays sits at a larger table holding a cigar. A rum bottle is next to him and he looks down at a chessboard. Across from him, his opponent, in a plaid shirt, leans forward with interest.'),
(10, 'A postcard with writing on it and a pencil on a table'),
(11, 'A chessboard showing an incomplete game, two glasses on coasters, a rum bottle, a book, a partly-eaten carrot and a cigar and matches in an ashtray on a long table.'),
(12, 'Full view of the stage. There\'s a large desk with a computer, a viola and other equipment, a small folding-desk, a larger folding-table with a chessboard and rum bottle on it and some chairs.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_hamtamapiano`
--

CREATE TABLE `alt_hamtamapiano` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_hamtamapiano`
--

INSERT INTO `alt_hamtamapiano` (`id`, `alt`) VALUES
(0, 'Two women crouch on squares of artificial grass and press keys of a MIDI piano. Behind the piano is a TV monitor showing composited images of performances from events organized by the tokyo performance art platform, ham tamago sandwich'),
(1, 'A young woman with a backpack plays the keyboard with one hand while videotaping herself with her phone. The monitor shows footage of a woman pouring beer for another woman.'),
(2, 'Two young men in black with backpacks crouch to play the keyboard. The monitor shows a red curtain.'),
(3, 'A person is playing the piano. The monitor shows some composited images, including one that contains a floating 3D spiky shape.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_instrumentphrase`
--

CREATE TABLE `alt_instrumentphrase` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_instrumentphrase`
--

INSERT INTO `alt_instrumentphrase` (`id`, `alt`) VALUES
(0, 'event flyer for \'instrument / phrase\'. it features the red line motif used in the eponymous performance. It also shows pictures of takumi-chan and stephan e perez.'),
(1, 'photo taken before the event of takumi-chan and stephan stand with the projection visible between him. takumi-chan is extending a hand in front of the projection and stephan is playing midi violin. The projection is of the red lines and curves used in their duo performance.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_letitsnow`
--

CREATE TABLE `alt_letitsnow` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_letitsnow`
--

INSERT INTO `alt_letitsnow` (`id`, `alt`) VALUES
(0, 'The performer, stephan e perez, does something on his smartphone while standing with his back close to a wall. A projection of a photo of himself illuminates him and the wall.'),
(1, 'A photo, taken prior to the performance, of the performer with Yeonjeong, who has two hooped earings and a flowery shirt. The performer\'s eyes are kind of big, maybe?'),
(2, 'The performer sits on a chair using his phone. The photo of him that he is editing is being projected. The audience watches.'),
(3, 'The performer takes a photo of himself in the lit room as the audience watches.'),
(4, 'The performer holds his phone and looks at the audience.'),
(5, 'The performer stands and looks at the projection, which shows his photo with Yeonjeong.'),
(6, 'The performance viewed from outside. The poster of the UNLIMITED performance art festival is on the door.'),
(7, 'Photo of the performer, post-performances. His eyes are narrow and have a reddish hue. The area around his mouth is very smooth.'),
(8, 'The performer smiles and takes a photo of Chumpon, an older man, seated next to the wheelchair of his wife.'),
(9, 'Photo of Chumpon, taken during the performance. His eyes are big and warm and his beard seems to sparkle.'),
(10, 'Selfie by Boat, the festival organizer, taken during the performance. Her face is very smooth and flawless');

-- --------------------------------------------------------

--
-- Table structure for table `alt_lettertomom`
--

CREATE TABLE `alt_lettertomom` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_lettertomom`
--

INSERT INTO `alt_lettertomom` (`id`, `alt`) VALUES
(0, 'wall projection with an additive alpha composition consisting of several images. Recognizable elements are English and Japanese text from a screen capture, the performer\'s closeup, and a photo of a young woman. In front of the projection and two the right, the performer is playing a MIDI violin with a bow.'),
(1, 'the performer plays viola in front of a projection of man and woman in their late 20s.'),
(2, 'the performer plays viola in front of a projection of a woman in her 30s holding a baby'),
(3, 'the performer plays viola in front of a projection of two women and a man in their 40s or 50s and older woman in her 70s'),
(4, 'the performer sits in front of a laptop and types. Behind him, there is a wall projection of an alpha-composition of footage of his viola-playing. This footage also shows the wall projections of photos including one of a young girl less than 10 years old and a wedding photo'),
(5, 'the performer sits in front of a laptop and types. Behind him, there is a wall projection of an alpha-composition of footage of his viola-playing. This footage also shows the wall projections of some old, monochrome family photos'),
(6, 'the performer sits in front of a laptop and types. Behind him, the wall is blank'),
(7, 'the performer sits in front of a laptop and types. Behind him, there is a wall projection of an alpha-composition of footage of his viola-playing. This footage also shows the wall projections of some old, partly monochrome family photos'),
(8, 'the performer sits in front of a laptop and types. Behind him, the wall is blank. His mouth is slightly open'),
(9, 'the performer fingers a MIDI violin in preparation to play. Behind him, there is a wall projection with an additive alpha composition of multiple images of screen-captured text in English and Japanese'),
(10, 'the performer plays a MIDI violin in front of a wall projection. The projection shows an additive alpha composition consisting of several images. Recognizable elements are English and Japanese text from a screen capture, the performer\'s closeup, and a monochrome photo of a young couple with a baby'),
(11, 'the performer plays a MIDI violin in front of a wall projection. The projection shows an additive alpha composition consisting of several images. Recognizable elements are English and Japanese text from a screen capture, the performer\'s closeup, the performer playing viola and a photo of a teenage boy with a woman in her 50s');

-- --------------------------------------------------------

--
-- Table structure for table `alt_liketearsinrain`
--

CREATE TABLE `alt_liketearsinrain` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_liketearsinrain`
--

INSERT INTO `alt_liketearsinrain` (`id`, `alt`) VALUES
(0, 'screen cap from \'...like tears in rain.\'. abstract image of fading, transparent cyan curves of various lengths and thicknesses over a dark teal background'),
(1, 'an android device running \'...like tears in rain sits on a pedestal with an info card, headphones and a projector. The projector duplicates the image on to the wall.'),
(2, 'a woman, with another person on each side, dons the headphones'),
(3, 'screen cap from \'...like tears in rain.\'. abstract image of fading, transparent cyan curves of various lengths and thicknesses over a dark teal background'),
(4, 'a woman wearing the headphones, touches the android with one hand. Curves appear on the wall projection'),
(5, 'Tsutsumi Yoshihiko, owner of Y\'s Arts, wears the headphones, holds the android device in both hands and looks at the curves in the projection');

-- --------------------------------------------------------

--
-- Table structure for table `alt_momsiphone`
--

CREATE TABLE `alt_momsiphone` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_momsiphone`
--

INSERT INTO `alt_momsiphone` (`id`, `alt`) VALUES
(0, 'sillhouette of the performer, stephan e perez, playing MIDI violin in front of a projection. The projection shows a painting of a colorful, abstract cloth tied into knots'),
(1, 'sillhouette of the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of a younger version of the performer with a smiling, brown man in his 60s- the performer\'s father'),
(2, 'the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of a young girl, no older than 10, the performer\'s niece'),
(3, 'sillhouette of the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of the  performer\'s father. The other is of a pool area'),
(4, 'the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of a younger version of the performer. The other is of a Viennese cafe.'),
(5, 'sillhouette of the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of the perforermer\'s father and a young boy, no older than 7, the performer\'s nephew. The other is of the niece.'),
(6, 'the performer, playing MIDI violin in front of a projection. The projection shows a composite of multiple images. It is bright and hard to distinguish the forms, though one man appears to be holding a guitar.'),
(7, 'sillhouette of the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of a woman in Hurricane Simulator. The other of a building in Vienna, perhaps the Staatsoper.'),
(8, 'the performer, playing MIDI violin in front of a projection. The projection shows a composite of two images. One of the images is of a cat');

-- --------------------------------------------------------

--
-- Table structure for table `alt_mothersday`
--

CREATE TABLE `alt_mothersday` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_mothersday`
--

INSERT INTO `alt_mothersday` (`id`, `alt`) VALUES
(0, 'colored event flyer for \'mother\'s\' day with the subtitle \'video performances inspired by lourdes vasquez perez\'. features a photo of lourdes as a child.'),
(1, 'two grayscale flyers stuck to the garage door of miit house, the venue'),
(2, 'the performer, stephan e perez, walks into the front door of the venue, which has a sign reading \'Miit House\' on it'),
(3, 'wide shot of the miit house on the day of the event'),
(4, 'projection of the color flyer on a stack of chaotically arranged canvases, suspended from the ceiling with a clip and wire'),
(5, 'On the right, the performer stands by the laptop computer, smiling. At his feet is the viola case. A camera tripod is next to the computer. On the left, the canvases and an event guest can be seen'),
(6, 'the performer playing the viola in front of a wall projection. The projection shows two photo-booth photos of a man and woman in their early 20s. The event hasn\'t started yet so the room is well lit.'),
(7, 'The performer sits in the middle of the room for a post-performance discussion as a man in glasses, the venue owner Jerry Gordon, gestures at him. The event guests are seated in a circle around the performer.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_mucchaakarui`
--

CREATE TABLE `alt_mucchaakarui` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_mucchaakarui`
--

INSERT INTO `alt_mucchaakarui` (`id`, `alt`) VALUES
(0, 'vertical split-screen. the top half shows a bespectacled Koujiro looking to the side. The bottom half is a composite of stephan in his apartment and an outside camera showing the space between two apartment buildings'),
(1, 'vertical split-screen. the top half shows a sidewalk in Kawasaki. The bottom half is a composite shows some apartment buildings in Osaka'),
(2, 'vertical split-screen. the top half shows a bespectacled Koujiro looking to the side. The bottom half is a composite of stephan in his apartment and an outside camera showing the space between two apartment buildings'),
(3, 'horizontal composite image of stephan holding a MIDI violin in his Osaka apartment and an outside view of some apartment buildings');

-- --------------------------------------------------------

--
-- Table structure for table `alt_noseikei`
--

CREATE TABLE `alt_noseikei` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_noseikei`
--

INSERT INTO `alt_noseikei` (`id`, `alt`) VALUES
(0, 'a woman in black underwear and a black top, the performer cat-o-nine-tails, holds her hands above her head. Behind her, a wall projection shows a 3d cloud-point representation of her body superimposed with a floating, 3d spiky form. The spikes are long and have a ripply texture'),
(1, 'cat-o-nine-tails politely presses her palms together, as does her cloud-point version'),
(2, 'cat-o-nine-tails holds her hands above her head. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a floating, 3d spiky form. The spikes are long and have a ripply texture'),
(3, 'cat-o-nine-tails holds her hands in front of her face. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a rounded, nucleus-like form'),
(4, 'cat-o-nine-tails holds her arms to the side, she is visible as a sillhouette. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a floating, 3d spiky form. The spikes are long and have a somewhat smooth texture'),
(5, 'cat-o-nine-tails twists her head violently to the side and makes a blocking motion with her two hands in front of her. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a floating, 3d spiky form. The spikes are long and have a somewhat smooth texture'),
(6, 'stephan e perez sits at a desk in front of a computer, playing a MIDI violin, facing towards cat-o-nine-tails, who shakes her hands in front of her, palms in. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a floating, 3d spiky form. The spikes are long and have a ripply texture'),
(7, 'cat-o-nine-tails holds her sides and tosses her head downwards and to the side, her medium-length hair flying about. Behind her, a wall projection shows a 3d cloud-point representation of her'),
(8, 'cat-o-nine-tails holds her hands in front of her and leans forward. Behind her, a wall projection shows a 3d cloud-point representation of her superimposed with a floating, 3d spiky form. The spikes are short and have a ripply texture'),
(9, 'cat-o-nine-tails is in a dance-like pose with her head tilted, holding her hands with palms parallel, pointed to the side. Behind her, a wall projection shows a floating, 3d spiky form. The spikes are long and have a ripply texture'),
(10, 'cat-o-nine-tails stand facing the wall projection, which shows a floating, 3d spiky form. The spikes are long and have a ripply texture');

-- --------------------------------------------------------

--
-- Table structure for table `alt_onthejalan`
--

CREATE TABLE `alt_onthejalan` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_onthejalan`
--

INSERT INTO `alt_onthejalan` (`id`, `alt`) VALUES
(0, 'event flyer for \'on the jalan\' that looks like it was made in mspaint. rectangular, cropped photos of stephan e perez and pinka oktafia are slapped on top of a cartoon graphic of a man and a woman on a moped. Speech bubbles have stephan asking pinka in Indonesian to teach him how to ride a moped. She replies \'ok\'.'),
(1, 'pre-event photo. stephan wears a black helmet, strapped around his chin. In the distance, you can see a parked moped.'),
(2, 'stephan climbs on the motorcycle as pinka smiles and observes'),
(3, 'shot taken on the road by pinka of stephan driving a moped alone'),
(4, 'shot taken from the side of stephan while driving. He looks towards the camera, smiling'),
(5, 'post-performance group discussion. The event guests sit with stephan next to the parked moped'),
(6, 'post-performance group discussion. The event guests sit with pinka and stephan next to the parked moped'),
(7, 'post-performance group discussion. Stephan sits next to a laughing woman. Behind the woman a small boy plays with a mobile device');

-- --------------------------------------------------------

--
-- Table structure for table `alt_presentation`
--

CREATE TABLE `alt_presentation` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_presentation`
--

INSERT INTO `alt_presentation` (`id`, `alt`) VALUES
(0, ''),
(1, ''),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, '');

-- --------------------------------------------------------

--
-- Table structure for table `alt_shinshutsukibotsu`
--

CREATE TABLE `alt_shinshutsukibotsu` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_shinshutsukibotsu`
--

INSERT INTO `alt_shinshutsukibotsu` (`id`, `alt`) VALUES
(0, 'event flyer for \'shinshutsukibotsu\'. The kanji of the title are shown above a green-tinted ocean, which reflects the kanji. Under the name stephan e perez, it says MIDI Violin, Computer.'),
(1, 'stephan e perez plays midi violin while standing in front of a laptop'),
(2, 'francesca le lohe plays flute while stephan e perez plays midi violin'),
(3, 'event flyer, vertical version. In addition to the kanji and green ocean, there is a black moon and its reflection. Rocks can be seen in the foreground of the ocean and a vague shape resembling a cityscape at the horizon');

-- --------------------------------------------------------

--
-- Table structure for table `alt_showingintention`
--

CREATE TABLE `alt_showingintention` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_showingintention`
--

INSERT INTO `alt_showingintention` (`id`, `alt`) VALUES
(0, 'The performer, stephan e perez, leans over a small, dimly lit, vinyl pool filled with water. Two women are crouching looking into the water. Reflections of people are visible in it.'),
(1, 'In a dark room, the performer sits cross-legged and holds a lantern in one hand, turning through a photo album with another'),
(2, 'a hand turns through a photo album, lit by a lantern'),
(3, 'the performer aims the yellow light of a handheld lamp at event guests, casting their shadows on the wall'),
(4, 'in a brightly lit area, a person helps hold a sheet of mirror paper as the performer cuts it in two'),
(5, 'a long stretch of mirror paper is pointed towards the event guests, showing their distorted reflections'),
(6, 'the performer stands and speaks with the event guests around him'),
(7, 'an event guest holding a teacup crouches to look into a sheet of mirror foil'),
(8, 'a laptop computer on a small table displays live footage of the event guests who look towards it. Next to the laptop is a webcam on a small tripod'),
(9, 'the performer holds a half sheet of mirror paper in front of him, which reflects light brightly');

-- --------------------------------------------------------

--
-- Table structure for table `alt_shunsuke`
--

CREATE TABLE `alt_shunsuke` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_shunsuke`
--

INSERT INTO `alt_shunsuke` (`id`, `alt`) VALUES
(0, 'The hand of the performer, stephan e perez, holds a smartphone. On its screen is an Instagram Storys screen with a photo of the performer and Shunsuke, the daikon'),
(1, 'The performer, with his wild hair and beard, holds a small bottle of wine'),
(2, 'The performer takes an instragram selfie with Shunsuke. On the wall, scenes from the film \'Castaway\' are playing'),
(3, 'The aforementioned Instagram story. Shunsuke and the performer both have big smiles. Shunsuke is a daikon, a variety of radish popular in Japan'),
(4, 'The performer holds and looks at his phone'),
(5, 'The performer leans forward and laughs'),
(6, 'The performer looks down at Shunsuke, whom he holds in both hands. Around him, the event guests observe with delight as they are introduced to Shunsuke'),
(7, 'Another IG story- a selfie of the performer and Shunsuke. The performer has a small cigar in his mouth. Shunsuke is laying next to a glass of wine, smiling.'),
(8, 'The performer drinks a glass of wine');

-- --------------------------------------------------------

--
-- Table structure for table `alt_tanjoub`
--

CREATE TABLE `alt_tanjoub` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_tanjoub`
--

INSERT INTO `alt_tanjoub` (`id`, `alt`) VALUES
(0, 'event flyer for \'tanjo b\', depicting stephan e perez smoking a cigar and holding a birthday cake. The background is a scene of mob bosses from \'The Godfather\''),
(1, 'the performer, stephan e perez plays midi violin with a table in front of him. The table has a computer on it'),
(2, 'the performer plays midi violin with a computer in front of him'),
(3, 'the performer stands to the side of the table, holding a viola, preparing to play'),
(4, 'the performer plays midi violin with a computer in front of him');

-- --------------------------------------------------------

--
-- Table structure for table `alt_tooiistory`
--

CREATE TABLE `alt_tooiistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_tooiistory`
--

INSERT INTO `alt_tooiistory` (`id`, `alt`) VALUES
(0, 'Promotional image for the performance of a Gunpla model (a gundam model kit) and Unicorn makeup kit.'),
(1, 'stephan e perez looks at the projection in preparation for the event. In front of him is a large desk. On it are: the unicorn makeup kit, makeup brushes, notebooks, combs, two unicorn plushies, a mirror, a laptop, two cameras on tripods and a gunpla box'),
(2, 'A notice taped to the door of the venue containing the promotional image and the description in Japanese'),
(3, 'The performers, stephan e perez and akari, are seated at both ends of the long table. One camera is pointed towards Akari, the other is pointed downwards towards the table space in front of Stephan. On the wall behind the, a projection shows the gunpla box which Stephan is tilting up towards the camera'),
(4, 'stephan consults the gunpla instructions while akari looks at the projection, which shows a composite of her and an advertisement for a makeup kit for little girls'),
(5, 'stephan works on the gunpla and akari looks at the projection, which shows a composite of stephan\'s work on the gunpla and a scene from the anime Mobile Suit Gundam'),
(6, 'stephan adjust his camera while akari applies makeup. The projection shows a composite of akari and the gunpla workspace'),
(7, 'stephan holds up the completed gundam head to the camera, shown in the projection'),
(8, 'akari, smiles at the camera after the performance. Her face is made up with kids\' makeup- glossy pink lips and blue & pink eyeshadow. Part of long dark hair is braided and she sports a baseball cap.'),
(9, 'akari and stephan, smiling, each balance a unicorn plushy on their head, with the unicorns leaning against each other. In front of them are the gunpla box and a figurine of Lalah Sune, a character from the original Gundam series and movies. Stephan\'s hand is in front, delicately holding the completely head of the gundam.');

-- --------------------------------------------------------

--
-- Table structure for table `alt_trialogue`
--

CREATE TABLE `alt_trialogue` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_trialogue`
--

INSERT INTO `alt_trialogue` (`id`, `alt`) VALUES
(0, 'event flyer with letters of the title, \'trialogue\', scattered about and circular photos of eric beyeler, murakami hiroshi and stephan e perez, connected by lines.'),
(1, 'stephan e perez plays midi violin while eric beyeler sits at a table manipulating effect pedals'),
(2, 'stephan, clasping his hands, sits and looks at eric, who is sitting next to him playing electric guitar.'),
(3, 'stephan sits behind a table, which has his midi violin and a water tumbler on it. He looks at eric, who is sitting next to him playing electric guitar.'),
(4, 'on the left, murakami hiroshi presses buttons on his synthesizer gear. on the middle and right, stephan e perez plays midi violin while eric beyeler sits at a table with effect pedals, holding an electric guitar'),
(5, 'stephan places his bow on the table while holding the midi violin while eric beyeler sits at a table with effect pedals, holding an electric guitar'),
(6, 'on the left, murakami hiroshi speaks into a microphone. stephan e perez holds his midi violin while eric beyeler sits at a table with effect pedals, holding an electric guitar'),
(7, 'stephan, performing \'addiction\', stands behind a music stand playing midi violin and pressing a MIDI pedal with his foot');

-- --------------------------------------------------------

--
-- Table structure for table `alt_whisperingforest`
--

CREATE TABLE `alt_whisperingforest` (
  `id` int(10) UNSIGNED NOT NULL,
  `alt` varchar(800) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alt_whisperingforest`
--

INSERT INTO `alt_whisperingforest` (`id`, `alt`) VALUES
(0, 'The performer, stephan e perez, stands in a library as group of students lines up to show him something'),
(1, 'The performer stands alone in an aisle of bookcases, examing one of the shelves. A cable is coming from his feet'),
(2, 'The students and other event guests are in the aisle with the performer as he looks at a book'),
(3, 'The performer points his fist, which has a webcam taped to the top of it, at a book, held open by a man against the side of the bookshelf. The book has old pictures of Philippino farmers and workers in traditional attire.'),
(4, 'The performer leans with his hands over books held by two students'),
(5, 'In the study area of the libary hall, the performer addresses the event guests, who are seated at tables'),
(6, 'The performer points a camera at a book, held by someone against the side of a bookcase'),
(7, 'The performer laughs with a man holding a book for him. Students are lined up holding books'),
(8, 'View from between two bookshelves of the performer scanning the students\' books');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `url_title` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `event_venue` varchar(100) DEFAULT NULL,
  `city_country` varchar(50) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `url_title`, `date`, `event_venue`, `city_country`, `video_url`) VALUES
(0, 'addiction', 'addiction', '2020-02-02', 'ftarri', 'tokyo, japan', ''),
(1, 'trialogue', 'trialogue', '2021-05-16', 'studio leda', 'tokyo, japan', ''),
(2, 'shin shutsu ki botsu', 'shinshutsukibotsu', '2021-06-21', 'ho\'okipa square', 'tokyo, japan', ''),
(3, 'chiku-chiku shin-shin', 'chikuchikushinshin', '2021-08-01', 'para', 'tokyo, japan', ''),
(4, 'tan jou: b', 'tanjoub', '2021-08-23', 'flying teapot', 'tokyo, japan', ''),
(5, 'instrument/phrase', 'instrumentphrase', '2021-11-03', 'permian', 'tokyo, japan', ''),
(6, 'camera lucida', 'cameralucida', '2022-11-05', '@ subterranean', 'tokyo, japan', 'https://www.youtube.com/embed/47h0yJ-EngI?si=n_5ldBU2ZOqCeNT0'),
(7, 'mother\'s day', 'mothersday', '2023-08-26', 'miit house', 'osaka, japan', ''),
(8, 'on the jalan', 'onthejalan', '2023-11-03', '@ proyek edisi', 'yogyakarta, indonesia', '');

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `url_title` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `event_venue` varchar(100) DEFAULT NULL,
  `city_country` varchar(50) DEFAULT NULL,
  `video_url` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performances`
--

INSERT INTO `performances` (`id`, `title`, `url_title`, `date`, `event_venue`, `city_country`, `video_url`) VALUES
(0, 'like tears in rain', 'liketearsinrain', '2018-08-20', '\'9 sense Arts\' @ Y\'s ARTS', 'tokyo, japan', 'https://www.youtube.com/embed/wrBxPx1EXI4?si=-IWXUm7R1lah9gBY'),
(1, 'eurydice', 'eurydice', '2020-11-28', '\'morning call\' @ BUoY', 'tokyo, japan', 'https://www.youtube.com/embed/VG5Ck46fgFA?si=WB05kVvhZoIPbPfg'),
(2, 'no seikei', 'noseikei', '2021-12-04', '\'ham tamago sandwich #001\' @ chateau', 'tokyo, japan', 'https://www.youtube.com/embed/LAN9oe2uMKw?si=ICYCUyIeiBpcSJOJ'),
(3, 'geometry', 'geometry', '2022-03-26', '「音沙汰」@ BUoY', 'tokyo, japan', 'https://www.youtube.com/embed/SKMbt5BIOQM?si=XybCKk0LICi6qnCA'),
(4, 'ham tama piano', 'hamtamapiano', '2022-09-02', '「”今までの” Performance Art Platform ハムたまごサンドイッチ展」@ tokyo university of the arts', 'tokyo, japan', ''),
(5, 'for akari', 'forakari', '2023-03-19', '@ permian', 'tokyo, japan', 'https://www.youtube.com/embed/FLbToKoi_w0?si=4JrQp-XwOaYXtvyl'),
(6, 'muccha akarui', 'mucchaakarui', '2023-06-21', '@ public street and private residence', 'kawasaki and osaka, japan', ''),
(7, 'shunsuke', 'shunsuke', '2023-06-24', '\'PPPP volume 3\' yuhigaoka studio', 'osaka, japan', 'https://www.youtube.com/embed/wBGlyDljjmg?si=B3lVKeYJA3k7KFR7'),
(8, 'mom\'s iPhone', 'momsiphone', '2023-08-26', '\'mother\'s day\' @ miit house', 'osaka, japan', 'https://www.youtube.com/embed/yNKlunWoo7w?si=CXLdr1qB44faNlto'),
(9, 'letter to mom', 'lettertomom', '2023-08-26', '\'mother\'s day\' @ miit house', 'osaka, japan', 'https://www.youtube.com/embed/OJJrdTy82io?si=rV4JSHYuO3uwrqYN'),
(10, 'tooii story', 'tooiistory', '2023-09-16', '「路地裏の舞台」@ space house', 'osaka, japan', 'https://www.youtube.com/embed/nb1pzk9UjHs?si=teKkV4yoUOmjtaZQ'),
(11, 'whispering forest', 'whisperingforest', '2023-09-27', '\'8th SIPA International\' @ Miriam College', 'Quezon City, the Philippines', 'https://www.youtube.com/embed/nn1OjRMA-BQ?si=231JpJdOecIzpr8Z'),
(12, 'cartography', 'cartography', '2023-09-28', '\'8th SIPA International\' @ University of the East', 'Manila, the Philippines', 'https://www.youtube.com/embed/DB_iUxVcIMQ?si=FKAQ30WZ2lPoj1MT'),
(13, 'let it snow', 'letitsnow', '2023-11-18', '\'UNLIMITED performance art festival\' @ art space thama', 'chiang mai, thailand', ''),
(14, 'showing intention', 'showingintention', '2024-02-23', '「枝分かれの部屋」@ decameron', 'tokyo, japan', 'https://www.youtube.com/embed/_5bnHHo-IrM?si=pt3-jTRYpbkGgR3V'),
(15, 'presentation', 'presentation', '2024-05-14', 'nui kopi, hin bus depot', 'george town, malaysia', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alt_addiction`
--
ALTER TABLE `alt_addiction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_cameralucida`
--
ALTER TABLE `alt_cameralucida`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_cartography`
--
ALTER TABLE `alt_cartography`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_chikuchikushinshin`
--
ALTER TABLE `alt_chikuchikushinshin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_eurydice`
--
ALTER TABLE `alt_eurydice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_forakari`
--
ALTER TABLE `alt_forakari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_geometry`
--
ALTER TABLE `alt_geometry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_hamtamapiano`
--
ALTER TABLE `alt_hamtamapiano`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_instrumentphrase`
--
ALTER TABLE `alt_instrumentphrase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_letitsnow`
--
ALTER TABLE `alt_letitsnow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_lettertomom`
--
ALTER TABLE `alt_lettertomom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_liketearsinrain`
--
ALTER TABLE `alt_liketearsinrain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_momsiphone`
--
ALTER TABLE `alt_momsiphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_mothersday`
--
ALTER TABLE `alt_mothersday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_mucchaakarui`
--
ALTER TABLE `alt_mucchaakarui`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_noseikei`
--
ALTER TABLE `alt_noseikei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_onthejalan`
--
ALTER TABLE `alt_onthejalan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_presentation`
--
ALTER TABLE `alt_presentation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_shinshutsukibotsu`
--
ALTER TABLE `alt_shinshutsukibotsu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_showingintention`
--
ALTER TABLE `alt_showingintention`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_shunsuke`
--
ALTER TABLE `alt_shunsuke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_tanjoub`
--
ALTER TABLE `alt_tanjoub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_tooiistory`
--
ALTER TABLE `alt_tooiistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_trialogue`
--
ALTER TABLE `alt_trialogue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alt_whisperingforest`
--
ALTER TABLE `alt_whisperingforest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performances`
--
ALTER TABLE `performances`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
