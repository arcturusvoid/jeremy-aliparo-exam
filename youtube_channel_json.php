<?php

// Connect to the database
$pdo = new PDO('mysql:host=localhost;dbname=youtube_db', 'root', '');


// Create connection
$conn = new mysqli('localhost', 'root', '', 'youtube_db');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}




if (isset($_GET['type'])) {
    if ($_GET['type'] === '0') {

        // Fetch channel from the database
        $sql = "SELECT * FROM youtube_channels limit 1";
        $result = $conn->query($sql);

        // Set the appropriate headers
        header('Content-Type: application/json');
        header('Content-Disposition: attachment; filename="channel.json"');

        // Output the JSON response
        echo json_encode($result->fetch_assoc());
    } else {
        // Fetch videos from the database
        $sql = "SELECT * FROM youtube_channel_videos";
        $result = $conn->query($sql);

        // Set the appropriate headers
        header('Content-Type: application/json');
        header('Content-Disposition: attachment; filename="videos.json"');

        // Output the JSON response
        // var_dump(json_encode($result->fetch_assoc()));
        echo json_encode($result->fetch_all(MYSQLI_ASSOC));
    }
}