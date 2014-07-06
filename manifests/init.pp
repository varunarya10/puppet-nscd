#Class: nscd
class nscd (
  $hosts_cache  = 'yes',
  $passwd_cache = 'no',
  $group_cache  = 'no',
  $package_name = 'nscd',
  $service_name = 'nscd',
){
   class{'nscd::install':
     package_name => $package_name, 
  }
  class{'nscd::config':
    hosts_cache  => $hosts_cache,
    passwd_cache => $passwd_cache,
    group_cache  => $group_cache,
    package_name => $package_name,
    service_name => $service_name,
  }
  class{'nscd::service':
    service_name => $service_name,  
  }
}
