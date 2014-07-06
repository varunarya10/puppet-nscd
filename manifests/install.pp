class nscd::install (
  $package_name = 'nscd',
) {
    
   package{"$package_name":
     ensure => 'present'
   }

}
