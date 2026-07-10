<?php

function dbConnect()
{
    // $servername = "sql201.infinityfree.com";
    // $username = "if0_36172615";
    // $password = "gM16WXUkJJUtcmI";
    // $database = "if0_36172615_sep_site";
    // $port = "3306";
    $servername = getenv('DB_HOST') ?: "localhost";
    $username = getenv('DB_USER') ?: "root";
    $password = getenv('DB_PASS') ?: "";
    $database = getenv('DB_NAME') ?: "sep_site";
    $port = getenv('DB_PORT') ?: "3306";
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