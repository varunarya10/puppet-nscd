class nscd::service (
  $service_name = 'nscd'
) {

   service{$service_name:
     ensure    => running,
     enable    => true,
     hasstatus => true,
     hasrestart => true,
     require   => Class['nscd::config'],
     subscribe => Class['nscd::config']
   }
}
