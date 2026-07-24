<?php
if (!version_compare(PHP_VERSION, '7.0.0', '>=')) {
    exit("mLITE requires at least <b>PHP 7.0</b>");
}

// Salin file ini menjadi config.php dan isi sesuai environment
// cp config.example.php config.php

define('DBHOST', 'localhost');      // Ganti sesuai host database
define('DBPORT', '3306');
define('DBUSER', 'db_user');        // Ganti sesuai user database
define('DBPASS', 'db_password');    // Ganti sesuai password database
define('DBNAME', 'db_name');        // Ganti sesuai nama database

// URL Webapps — sesuaikan dengan URL server
define('WEBAPPS_URL', 'http://your-server/mlite2/uploads');
define('WEBAPPS_PATH', BASE_DIR . '/uploads');

// Multi APP
define('MULTI_APP', false);
#define('MULTI_APP_REDIRECT', 'dokter_ulun');

// Admin cat name
define('ADMIN', 'admin');

// Themes path
define('THEMES', BASE_DIR . '/themes');

// Modules path
define('MODULES', BASE_DIR . '/plugins');

// Uploads path
define('UPLOADS', BASE_DIR . '/uploads');

// Lock files
define('FILE_LOCK', false);

// Basic modules
define('BASIC_MODULES', serialize([
    9 => 'settings',
    0 => 'dashboard',
    1 => 'master',
    2 => 'pasien',
    3 => 'rawat_jalan',
    4 => 'kasir_rawat_jalan',
    5 => 'kepegawaian',
    6 => 'farmasi',
    8 => 'users',
    7 => 'modules',
    10 => 'wagateway'
]));

// Developer mode — set false di production!
define('DEV_MODE', false);
