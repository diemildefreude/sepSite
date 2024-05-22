<?php
    $rootDir = "";

    $fn = basename($_SERVER["PHP_SELF"]);
    $urlEnd = substr($fn, 0, strrpos($fn, "."));
    $title = "stephan e perez | bio";
    $description = "performance and new media";
    $ogImg = "archives/images/showingintention/hires/00.jpg";
    $ogType = "website";
    include "headCore.php";
?>
    <link href="archive.css" rel="stylesheet">
</head>
<body>
    <?php    
        include "header.php";
    ?>
    <div class="menu-main-container">
        <?php
            include "menuA.php";
        ?>
        <main>
            <div class="statement">
                <h2 class="heading centered" tabindex="0">summary</h2>
                <img src="bioImages/00.jpg" alt="stephan e perez playing a MIDI violin in front of a projection of composited images. The two images are of a man in a garden and a closeup of a cat.">
                <p>
                    The overall theme and approach of my work is to use the medium of performance as well as technology to place a magnifying glass on life. The material is often related to memory & nostalgia, or everyday activities. My work should serve to, in the Cageian sense, blur the line between art and life.
                </p>
                <p>
                    Stemming from my background in music, some of my pieces use stringed instruments, either as material for a broader concept (<a href="archives/geometry">geometry</a>, <a href="archives/lettertomom">letter to mom</a>) or as a way to musically control video (<a href="archives/momsiphone">mom's iPhone</a>, <a href="archives/forakari">for akari</a>). More recently, I've branched out into performances that use live cameras without instruments (<a href="archives/whisperingforest">whispering forest</a>, <a href="archives/tooiistory">tooii story</a>, <a href="archives/cartography">cartography</a>) and performances that use very little technology at all (<a href="events/onthejalan">on the jalan</a>). 
                </p>
                <img src="bioImages/01.png" alt="two overlapping round projections on a wall. one shows a map of florida, the other a group photo">
                <h2 class="heading centered" tabindex="0">background</h2>
                <p>
                    After studying viola for a few years, I began studying composition and electronic music at the Universität Mozarteum in Salzburg, Austria with Reinhard Febel and Achim Bornhöft. My written scores from the end of this period used flexitime space notation and graphical dynamic notation as well as hybrid acoustic/electronic pieces.
                </p>
                <div class= "iframe-container-container">
                    <div class="iframe-container">
                        <iframe frameborder="0"
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen=""
                            src="https://www.youtube.com/embed/cW0Azu5WkPE?si=meLOMDMQr-vzi4z0"
                        >
                        </iframe>
                    </div>
                </div>
                <p>
                    After graduating and moving to Japan, I began studying programming and exploring procedural audio for interactive applications. This began when I did the sound for the iOS game <em>enen</em> and made a series of standalone interactive pieces.
                </p>
                <div class= "iframe-container-container">
                    <div class="iframe-container">
                        <iframe frameborder="0"
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen=""
                            src="https://www.youtube.com/embed/VG5Ck46fgFA?si=jYKBK57bsos8apdK"
                        >
                        </iframe>
                    </div>
                </div>
                <p>
                    In Tokyo, I began performing structured improvisations by connecting the viola or MIDI violin to a computer and using it to control live-synthesized sounds.
                </p>
                <div class= "iframe-container-container">
                    <div class="iframe-container">
                        <iframe frameborder="0"
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen=""
                            src="https://www.youtube.com/embed/eZ5yDTpmJ2g?si=xHsMb4jNlTtqHLCV"
                        >
                        </iframe>
                    </div>
                </div>
                <p>
                    Around this time, I met several people in the Tokyo performance art scene and began working with them, contributing generative audio and video to the collaborations. The influence of these collaborations and connections helped lead me to focus my solo practice towards performance and live video art.
                </p>
                <div class= "iframe-container-container">
                    <div class="iframe-container">
                        <iframe frameborder="0"
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen=""
                            src="https://www.youtube.com/embed/LAN9oe2uMKw?si=chRICh6C9sZopGo3"
                        >
                        </iframe>
                    </div>
                </div>
            </div>
            <?php include "footer.html";?>
        </main>
    </div>
</body>
</html>