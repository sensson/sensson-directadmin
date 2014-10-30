class directadmin::custombuild::options(
	$php1_release = '5.4',
	$php2_release = 'no',
	$php1_mode = 'mod_php',
	$php2_mode = 'php-fpm',
	$mysql_version = '5.5',
	$apache_version = '2.4',
	$mod_ruid2 = 'yes',
	$htscanner = 'no',
	$php_ini = 'no',
	$php_timezone = 'CET',
	$php_ini_type = 'production',
	$ioncube = 'yes',
	$x_mail_header = 'yes',
	$zend = 'yes',
	$webserver = 'apache',
	$secure_htaccess = 'no',
	$harden_symlinks_patch = 'yes',
	$use_hostname_for_alias = 'no',
	$redirect_host_https = 'no',
	$mysql_inst = 'yes',
	$mysql_backup = 'yes',
	$mysql_backup_dir = '/usr/local/directadmin/custombuild/mysql_backups',
	$phpmyadmin = 'yes',
	$phpmyadmin_ver = '4',
	$squirrelmail = 'yes',
	$roundcube = 'yes',
	$exim = 'yes',
	$eximconf = 'no',
	$clamav = 'yes',
	$spamassassin = 'yes',
	$dovecot = 'yes',
	$pigeonhole = 'no',
) {
	# File: our custombuild options. We're not binding any actions to it
	# yet. This may result in unexpected, uncontrollable, results.
	file { '/usr/local/directadmin/custombuild/options.conf':
		owner => diradmin,
		group => diradmin,
		mode => 755,
		ensure => present,
		content => template('directadmin/options.conf.erb'),
	}
}