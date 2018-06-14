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
define('DB_NAME', 'Moffitt');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         '`dZyHqSP|h?R!TD.6I1%=wC^,}wt=-=CooY4W]!/+w8Mv, $_ZOb/Y>-o)FKyPYm');
define('SECURE_AUTH_KEY',  'jv]MG|Z-g2#^&)EOO^]:leo*M|1:fh%xTW} 6%mncq.(.3eLOi[S:4I-*jFb}TnI');
define('LOGGED_IN_KEY',    'sA?0amBC#4d{L6901_j?J{{L15#JjfxFWuY7MHX/_(Aqduq+jhkV.=J[v*<Vf`Gs');
define('NONCE_KEY',        'hK(W2R_?dp@Hkq?~RVWTB9I@atQFE[+{l:lj]:keHsT+WTlge`D1<eVe[P-Pt v9');
define('AUTH_SALT',        '1y7%7b30A*$i|]Z<#X,dhNLB}{m:Pr#DV?X0d9$2vAa}jTNgJchJudEgWUvw_V)8');
define('SECURE_AUTH_SALT', '.4#<t:rRtHL0UGN}K|Sx,;zMrG>(j;55D;5{1UE_2bTIw;C_v/~<66]H)Hgf3PqV');
define('LOGGED_IN_SALT',   'NCh@&aRDMK&1L,Rvv%qM[.[9[ew*8.i({g;i|#8dKQ3oz=iR5/17o}UAAke}FC33');
define('NONCE_SALT',       'Ky7w;b#8jO,0fZG]*]b(yq06X(.hZI%5iG!1nLcAYR!=3Y[Gia-v+f;y/!~H$]Gp');

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
