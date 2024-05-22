<?php
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $rootDir = "./"; //used in dirLoad.php and menu.php
    include "dirLoad.php";
    include 'database.php';   
    $mysqli = dbConnect();
    $archives = loadArchivesToArray("archives", "performances", $mysqli);
    $events = loadArchivesToArray("events", "events", $mysqli);
    $archiveAlts = loadFirstAlts($archives, $mysqli);
    $eventAlts = loadFirstAlts($events, $mysqli);
    mysqli_close($mysqli);

    $urlEnd = "";
    $title = "stephan e perez - artist";
    $description = "performance and new media";
    $ogImg = "archives/images/lettertomom/hires/00.jpg";
    $ogType = "website";
    include "headCore.php";
?>        
<!-- continued from headCore.php -->
    <link href="<?php echo $rootDir . 'slider.css'?>" rel="stylesheet">
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
            <?php 
                $a = $events;
                include "linkCarousel.php"; 
            ?>
            <div class="tile-section">
                <div class="tiles-header-container">
                    <h2 tabindex="0">archives</h2>
                    <a href="./archiveList">view all</a>
                </div>
                <div class="tiles-container">
                    <?php 
                        $noToDisplay = 6;
                        $start = sizeof($archives) - 1;
                        $stop = sizeof($archives) < $noToDisplay ? 0 : sizeof($archives) - $noToDisplay;
                        for($i = $start; $i >= $stop; $i--):?>
                        <div class="tile">
                            <div class="tile-more">
                                
                                <div class="tile-more-text">
                                <div class="mag-icon tile-mag">
                                    <div class="mag-glass"></div>
                                    <div class="mag-handle"></div>
                                </div>
                                more
                                </div>
                            </div>
                            <a href="<?php echo $archives[$i]->link?>"
                                aria-label="<?php echo $archives[$i]->title ?>">
                                <img src="<?php echo $archives[$i]->imgDir . 'lores/00.jpg'?>"
                                 alt="<?php echo $archiveAlts[$i] ?>">
                            </a>
                            <div class="img-text-box tile-text">                                
                                <?php echo $archives[$i]->title . ' (' . substr($archives[$i]->date,0,4) . ')'?>
                            </div>
                        </div>
                    <?php endfor; ?>
                </div>
            </div>
            <span style="display: none">The overall theme and approach of my work is to use the medium of performance as well as technology to place a magnifying glass on life. The material is often related to memory & nostalgia, or everyday activities. My work should serve to, in the Cageian sense, blur the line between art and life.</span>
            <?php include "footer.html";?>
        </main>
    </div>
</body>
</html>