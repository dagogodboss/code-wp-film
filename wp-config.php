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
define('DB_NAME', 'reonco5_wp907');

/** MySQL database username */
define('DB_USER', 'reonco5_wp907');

/** MySQL database password */
define('DB_PASSWORD', 'WEM60-6p!S');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'hlxo37wzkp8wtcpjfh24vmxvojs1b9psigwmuwo9sjtjzv3jspp57f14ve3fzjpn');
define('SECURE_AUTH_KEY',  'xgmhdr2bsxjp4gmgrmr3zvldrzj0p3rtl0gw7qjttmudthwkutxoz6bcygl1bihd');
define('LOGGED_IN_KEY',    'vu9wti7vnopovbynhibiessqlk79ijtzevhw9p0ayydymuln3sl3legrlreot9ui');
define('NONCE_KEY',        'oheiyt4l1ce4c4dlaawqirqtzhjho53brpuelat8a6bovpc8vnflrp9svupsrdkq');
define('AUTH_SALT',        '9hfpjlrzxmktyz98upw0mlvi2cgp3kzwrje7apq21rqgud3hdpaumizjtk1opofa');
define('SECURE_AUTH_SALT', 'c3oa5nxkmzbe79dp17k2h6ppjtwl83yhi9g8sws7nckdm5y9l0mmk4nk0parsfk6');
define('LOGGED_IN_SALT',   'lpljite1domznntkdijh0jdrm1dkmi5ksvvutto4csyd3eieskh7jl17gpcwmqjj');
define('NONCE_SALT',       'deftukdcw1nrzyran1itcmhg3sjwj8t8ot7ggxrqnvpvjhv1ejyogi12rulirrmv');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
