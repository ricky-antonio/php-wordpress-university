<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'kK9L7fVFto0WhBDxQv83ov6/NtHVW4WOUjdBMHLm+PKe/nGGUUHcVMDl89qPow2qnxU4Pbp356VvnKcX1q3v3A==');
define('SECURE_AUTH_KEY',  'ulD1bCDhXNrYqd/dLiLPOSeCdNGLQmljT+2wPnP6MowxUtTuSsB4M6atFQSqvkblcYqatPVHYWvlDIwSEEeNXw==');
define('LOGGED_IN_KEY',    'WPahJW8TaFy5WKRvkOaluBT67/WMWUk8X1QfTJ4fRAHjvaf71ydOBz3csrYxC/3IezfjSK3sEhonp69QH8H9vw==');
define('NONCE_KEY',        'hiFOjHrKA5vL9kbMRGAq97STB4gXQkZXolS+troExysAssiXMB9cIlBcfC6PaX80/IJ2v4+9SwpeDskvJC86cQ==');
define('AUTH_SALT',        'NRP+PL7tDQ8aFR0Y5RS5rC51egESyhEofzyw4VPuQRsI2oNKMtIhsJeoz7uK4AgGwTfLB+3dVdV1TcTPyN4tmw==');
define('SECURE_AUTH_SALT', 'S8BKHxt9joq9dz8AYlTIoX5p5k1ZYvC8Yw01/BrwRpWPXxL1rdvHCqMZNsC10W04gLkJckU/SDnK64ve7QpGCw==');
define('LOGGED_IN_SALT',   'wit5rvM4N++1xEQmmDOxRsXJxLQ/z4IEiNElgkhPw+D7WK4MzErn8ZTSchOBPFsFpxlx4csvN1aEzCr5tw3Mxg==');
define('NONCE_SALT',       'RCy7ZEnXicpdhUHH2jC5qAt0oSiEqpskYw+dX4VKh7oVE6wUbcp4KIUiiViCkmtj2QZU1MAZbzfp0K744KT2Lw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
