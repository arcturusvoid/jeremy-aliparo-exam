<?php
// Create connection
$conn = new mysqli('localhost', 'root', '', 'youtube_db');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch channel from the database
$sql_channel = "SELECT * FROM youtube_channels limit 1";
$result_channel = $conn->query($sql_channel);

// Check the page
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 20; // Number of videos per page

// Calculate the offset
$offset = ($page - 1) * $limit;

// Fetch videos from the database
$sql_videos = "SELECT * FROM youtube_channel_videos LIMIT $limit OFFSET $offset";
$result_videos = $conn->query($sql_videos);

// Count the total number of videos for pagination
$countVideosSql = "SELECT COUNT(*) AS total FROM youtube_channel_videos";
$countVideoResult = $conn->query($countVideosSql);
$totalVideos = $countVideoResult->fetch_assoc()['total'];

// Calculate the total number of pages
$totalPages = ceil($totalVideos / $limit);

// Set the appropriate headers
header('Content-Type: application/json');

$result = array(
    'channel' => $result_channel->fetch_assoc(),
    'videos' => $result_videos->fetch_all(MYSQLI_ASSOC),
    'totalPages' => $totalPages
);

// Output the JSON response
echo json_encode($result);