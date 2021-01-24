<?php

//start session on web page
session_start();

//config.php

//Include Google Client Library for PHP autoload file
require_once 'vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('115769304656-80rvp85s611rbb83sugshbtkodvjbehf.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('9B2qrBBMa0NkbyoNOUg0kyHE');

//Set the OAuth 2.0 Redirect URI
$google_client->setRedirectUri('Your exact location where you want the code to be run');

// to get the email and profile
$google_client->addScope('email');

$google_client->addScope('profile');

?>
