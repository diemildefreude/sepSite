<?php 

class Archive 
{
    public $title;
    public $urlTitle;
    public $date;
    public $eventVenue;
    public $imgDir;
    public $imgCount;
    public $link;
    public $video;
}

    // while ($row = mysqli_fetch_array($result))
	// 	echo '<tr><td><input type="checkbox" name="chknews['.$row['id'].']" /> '.$row['title'].'</td><td>'.$row['link'].'</td><td>'.date("jS F Y", strtotime($row['created'])).'</td></tr>';
    

    function loadArchivesToArray($dir, $tableName, $mysqli)
    {             
        $result = loadTable($mysqli, $tableName);
        $arr = array();
        
        while ($row = mysqli_fetch_array($result))
        {            
            $a = copyRowToArchive($dir, $row);
            array_push($arr, $a);
        }
        return $arr;
    }

    function loadArchive($dir, $tableName, $index, $mysqli)
    {
        $result = loadTable($mysqli, $tableName . ' WHERE id = {$index}');
        $row = mysqli_fetch_row($result);
        $a = copyRowToArchive($dir, $row);
        return $a;
    }

    function copyRowToArchive($dir, $row)
    {
        $imgDirName = $dir . '/images';
        $a = new Archive;

        $a->title = $row['title'];
        $a->urlTitle = $row['url_title'];
        $a->link = $dir . '/' . $row['url_title'];
        $a->date = $row['date'];
        $a->eventVenue = $row['event_venue'] . ' | ' . $row['city_country'];
        $a->video = $row['video_url'];            
        $a->imgDir = $imgDirName . '/' . $row['url_title'] . '/';
        $a->imgCount = iterator_count(new FilesystemIterator($a->imgDir . 'hires'));
        return $a;
    }

    function loadFirstAlts($archives, $mysqli)
    {
        //include 'database.php';
        //$mysqli = dbConnect();
        $alts = array();
        for($i = 0; $i < sizeof($archives); ++$i)
        {
            $result = loadTable($mysqli, 'alt_' . $archives[$i]->urlTitle . ' WHERE id = 0');
            while ($row = mysqli_fetch_array($result))
            {                
                array_push($alts, $row['alt']);
            }
        }
        return $alts;
    }

    function loadArchiveAlts($archiveName, $mysqli)
    {
        $tableName = 'alt_' . $archiveName;
        $result = loadTable($mysqli, $tableName);
        //include 'database.php';
        $arr = array();
        while ($row = mysqli_fetch_array($result))
        {
            array_push($arr, $row['alt']);
        }
        return $arr;
    }
?>