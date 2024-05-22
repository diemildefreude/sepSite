<?php

function dbConnect()
{
    // $servername = "sql201.infinityfree.com";
    // $username = "if0_36172615";
    // $password = "gM16WXUkJJUtcmI";
    // $database = "if0_36172615_sep_site";
    // $port = "3306";
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "sep_site";
    $port = "3306";
    $mysqli = new mysqli($servername, 
                                $username, 
                                $password, 
                                $database
                                ,$port
                                );
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }
    else
    {
        return $mysqli;
        // die("Connected successfully");
    }
}

function loadTable($mysqli, $tableName)
{
    mysqli_set_charset($mysqli, 'utf8mb4');
    $queryStatement = 'SELECT * FROM ' . $tableName . ' ORDER BY id ASC';
    $result = $mysqli->query($queryStatement);
    return $result;
} 
?>