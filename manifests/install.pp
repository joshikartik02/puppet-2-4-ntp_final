class ntp_final::install(
   String $package_name   = $::ntp_final::package_name,
   String $package_ensure = $::ntp_final::package_ensure, 
  ){
    package { $package_name:
      ensure => $package_ensure,
      }
    }
