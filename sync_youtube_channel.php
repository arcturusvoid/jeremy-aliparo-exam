<?php
// Synchronize the time
date_default_timezone_set('Asia/Singapore');

// YouTube API key
$apiKey = 'AIzaSyBJbpNh5qjK3V2c6CARI6MdiTFHg1IQptc';

// Channel ID or Username
$channelIdentifier = 'UCWJ2lWNubArHWmf3FIHbfcQ';

// Fetch channel details
$channelApiUrl = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelIdentifier&key=$apiKey";
$channelResponse = file_get_contents($channelApiUrl);
$channelData = json_decode($channelResponse, true);

// Extract profile picture, name, and description
$profilePicture = $channelData['items'][0]['snippet']['thumbnails']['default']['url'];
$channelName = $channelData['items'][0]['snippet']['title'];
$channelDescription = $channelData['items'][0]['snippet']['description'];

// Save channel details to the database
$pdo = new PDO('mysql:host=localhost;dbname=youtube_db', 'root', '');

$channelInsertQuery = "INSERT INTO youtube_channels (profile_picture, name, description) VALUES (?, ?, ?)";
$channelStatement = $pdo->prepare($channelInsertQuery);
$channelStatement->execute([$profilePicture, $channelName, $channelDescription]);

// Fetch channel videos
$videosApiUrl = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelIdentifier&maxResults=50&order=date&type=video&key=$apiKey";
$videosResponse = file_get_contents($videosApiUrl);
$videosData = json_decode($videosResponse, true);

// Iterate over the videos and save their details to the database
$videoInsertQuery = "INSERT INTO youtube_channel_videos (yotube_channel_id, video_link, title, description, thumbnail, created_at) VALUES (?, ?, ?, ?, ?, ?)";
$videoStatement = $pdo->prepare($videoInsertQuery);

foreach ($videosData['items'] as $video) {
    $youtube_channel_id = 1;
    $videoLink = 'https://www.youtube.com/watch?v=' . $video['id']['videoId'];
    $videoTitle = $video['snippet']['title'];
    $videoDescription = $video['snippet']['description'];
    $videoThumbnail = $video['snippet']['thumbnails']['high']['url'];
    $publishTime = $video['snippet']['publishTime'];
    $videoStatement->execute([$youtube_channel_id, $videoLink, $videoTitle, $videoDescription, $videoThumbnail, $publishTime]);
}

$nextPageToken = $videosData['nextPageToken'];
// Fetch remaining videos from additional pages
if ($nextPageToken) {
    $nextVideosApiUrl = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelIdentifier&maxResults=50&order=date&type=video&pageToken=$nextPageToken&key=$apiKey";
    $nextVideosResponse = file_get_contents($nextVideosApiUrl);
    $nextVideosData = json_decode($nextVideosResponse, true);

    foreach ($nextVideosData['items'] as $video) {
        $youtube_channel_id = 1;
        $videoLink = 'https://www.youtube.com/watch?v=' . $video['id']['videoId'];
        $videoTitle = $video['snippet']['title'];
        $videoDescription = $video['snippet']['description'];
        $videoThumbnail = $video['snippet']['thumbnails']['high']['url'];
        $publishTime = $video['snippet']['publishTime'];
        $videoStatement->execute([$youtube_channel_id, $videoLink, $videoTitle, $videoDescription, $videoThumbnail, $publishTime]);
    }
}

echo 'Data saved successfully!';
