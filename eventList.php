<?php
    $rootDir = ""; //used in dirLoad.php    
    include "dirLoad.php";
    include 'database.php';   
    $mysqli = dbConnect();
    $events = loadArchivesToArray("events", "events", $mysqli);
    $eventAlts = loadFirstAlts($events, $mysqli);
    mysqli_close($mysqli);

    $fn = basename($_SERVER["PHP_SELF"]);
    $urlEnd = substr($fn, 0, strrpos($fn, "."));
    $title = "stephan e perez | events";
    $description = "performance and new media";
    $ogImg = "events/images/mothersday/carouselHi.jpg";
    $ogType = "website";
    include "headCore.php";
?>
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
            <div class="tile-section">
                <h2 class="heading centered">
                    events
                </h2>
                <div class="tiles-container">
                    <?php for($i = 0; $i < sizeof($events); $i++):?>
                        <div class="tile landscape">
                            <div class="tile-more">
                                
                                <div class="tile-more-text">
                                <div class="mag-icon tile-mag">
                                    <div class="mag-glass"></div>
                                    <div class="mag-handle"></div>
                                </div>
                                more
                                </div>
                            </div>
                            <a href="<?php echo $events[$i]->link?>"
                            aria-label="<?php echo $events[$i]->title ?>">
                                <img src="<?php echo $events[$i]->imgDir . 'carouselLo.jpg'?>"
                                    alt="<?php echo $eventAlts[$i] ?>">
                            </a>
                            
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
            <?php include "footer.html";?>
        </main>
    </div>
</body>
</html>