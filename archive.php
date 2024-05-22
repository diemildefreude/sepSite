<?php
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $rootDir = "../";
    $dirName = "";
    include("dirLoad.php");
    include 'database.php';   
    $mysqli = dbConnect();
    $archives = loadArchivesToArray($path, $table, $mysqli);

    $fn = basename($_SERVER["PHP_SELF"]);
    $archiveName = substr($fn, 0, strrpos($fn, "."));
    for($i = 0; $i < sizeof($archives); ++$i)
    {
        if($archiveName == basename($archives[$i]->link))
        {
            $index = $i;
            break;
        }
    }
    $archiveType = basename(dirname($_SERVER["PHP_SELF"])); 

    $archiveAlts = loadArchiveAlts($archiveName, $mysqli);
    mysqli_close($mysqli);

    $urlEnd = $archiveType . "/" . $archiveName;
    $title = $archives[$index]->title . " | stephan e perez";
    $description = $archives[$index]->date . " " . $archives[$index]->eventVenue ;
    $ogImg = $archiveType . "/images/" . $archiveName . "/hires/00.jpg";
    $ogType = "article";
    include "headCore.php";
?>
    <link href="../archive.css" rel="stylesheet">
    <link href="../slider.css" rel="stylesheet">
</head>
<body>
    <?php
        include "header.php";
    ?>
    <div class="menu-main-container">
        <?php
            include "menuA.php";
            $a = $archives;
        ?>            
        <main>
            <?php include "dualCarousel.php"; ?>
            <div class="info" tabindex="0">
                <h1><?php echo $archives[$index]->title ?> </h1>
                <h2><?php echo $archives[$index]->date?> </h2>
                <h2><?php echo $archives[$index]->eventVenue ?> </h2>
            </div>
            <?php  
            $vidString = $archives[$index]->video;
            if(strlen($vidString) > 0):?>
                <div class= "iframe-container-container">
                    <div class="iframe-container">
                        <iframe frameborder="0"
                            loading="lazy"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen=""
                            src="<?php echo $vidString ?>">
                        </iframe>
                    </div>
                </div>      
            <?php endif;?>
            
