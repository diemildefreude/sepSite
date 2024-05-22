<?php
    $rootDir = ""; //used in dirLoad.php
    include "dirLoad.php";
    include 'database.php';   
    $mysqli = dbConnect();
    $archives = loadArchivesToArray("archives", "performances", $mysqli);
    $archiveAlts = loadFirstAlts($archives, $mysqli);
    mysqli_close($mysqli);
    
    $fn = basename($_SERVER["PHP_SELF"]);
    $urlEnd = substr($fn, 0, strrpos($fn, "."));
    $title = "stephan e perez | archives";
    $description = "performance and new media";
    $ogImg = "archives/images/noseikei/hires/00.jpg";
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
                <h2 class="heading centered">archives</h2>
                
                <div class="tiles-container">
                    <?php for($i = 0; $i < sizeof($archives); $i++):?>
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
            <?php include "footer.html";?>
        </main>
    </div>
</body>
</html>