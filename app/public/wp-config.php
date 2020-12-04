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
 * @link https://codex.wordpress.org/Editing_wp-config.php
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
define('AUTH_KEY',         '70ZPz9VdLtvIFQklutUn0Pn6WCNYCie7wpNg3GJPAOMejlO/6T721IbQsJvX6FRf2t1zpdMwj33zViETOQgOGQ==');
define('SECURE_AUTH_KEY',  'bFL+kGSwJgr+Byo5Yz1G/ODwSmyDyVZkxG0+DqR997GwnQ+7KXvBlT1Ga3b/6lkb1USzcSdDDzVGC4ID7y0mCg==');
define('LOGGED_IN_KEY',    '8RaubFRlY3i183uL1ktuumECiW+6alGfNhTAPDI68I17f/yBULMKSBUr3djFyiIdkfwzsIsWQ0r+CcHiaze2Xg==');
define('NONCE_KEY',        'bNPze+9IZW5XoeCMpZbQvfGzZlHwvRpJqP/OP7Lz0pE+bL7pyU+uvwt/xr3wFz9+J1bcjAu5S+bmIIbIudmbfA==');
define('AUTH_SALT',        'QoTYjtyCIZkuBnYVMvpRAbgZy98XXq7CtvStVJ2PnoL1INqoIBKHpKpjzsVnP/sqi+wul+Ql8Lx1J+UgVxZopw==');
define('SECURE_AUTH_SALT', 'dnVdnD9Oaj4aZmjLy/ujcWNdn9rvUJJQwoCbUJt4TCpFGWY7RGC7rO6ufq2q+Z1inS9AX/DEH7gozQWC9Y0K1g==');
define('LOGGED_IN_SALT',   '0cRGQXCLoDW22xUxo1LH+1h3/gf7bJ1cY/jcgmA55YVt+L+oxMLR8zm3i/O3FTJ5VmrEsmdFpyovebB6owkk+A==');
define('NONCE_SALT',       '/dGuSmOwcPXoNI9iFoG6OqKEX/8BueohMYwRKsSvmaYKK2e1ak2gIEBMXZGL3EpMDw6Iz7+47yshDFlW7jZADg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_r6aazm11aj_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
