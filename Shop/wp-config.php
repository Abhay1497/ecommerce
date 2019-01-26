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
define('DB_NAME', 'ecomm');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

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
define('AUTH_KEY',         '?95gav Cs6nS< 3M`n8Q-K9]0+&,]9*I?_pB)7Gvq5qvqL?yzJ`Ru !G/<K=@foD');
define('SECURE_AUTH_KEY',  ':%<{7Kz?N*>.^.*0V7YPUU3w=I!h!TTg.Zs)L[2v*<xq(xk43oaOp 6;;>F?Bi{q');
define('LOGGED_IN_KEY',    '8It|3[)K*sCC*E>><+yMD-QDV~I6gU/qVo)O|U]B;AqD~J>g%_n9(X)Ofg@-{0)m');
define('NONCE_KEY',        'c61FkE/BH*(r+(]fnI @t*Wc@+%u)Tw%R~!qnvIL60cK/9Q$R*VR8mP:jqSz6H<+');
define('AUTH_SALT',        'GZ->il6V25xOW|#U~_>S~0{{<3ZB6</tVa2!bt9K_I1!w1Xs{Ay/ugt@L|I{)8G3');
define('SECURE_AUTH_SALT', 'IWR].80p2X;HAf<fQ6HCdwvf!~M{]+7lz1M.hOiqF>N^+sT I.B*>{q>00c]F?WX');
define('LOGGED_IN_SALT',   'bvTapRq&1QBgvq.9Jy_kr@jM<ph9Ki%FXdQS`a^!QchB:JlfW8NhcBA#[|_*%u?]');
define('NONCE_SALT',       'D8q2xyToRR7)x,z9aJ!@Ws53/.pr7AdU?f1<;DRbrp:$hX_[!QOS>K%BB4w1$P}T');

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
