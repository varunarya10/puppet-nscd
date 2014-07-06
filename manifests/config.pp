# == Class nscd::config
class nscd::config (
  $hosts_cache  = 'yes',
  $passwd_cache = 'no',
  $group_cache  = 'no',
  $package_name = 'nscd',
  $service_name = 'nscd',
) {

  file{'/etc/nscd.conf':
    ensure  => present,
    content => template('nscd/nscd.conf.erb'),
    require => Package[$package_name],
    notify  => Service[$service_name]
  }
}

