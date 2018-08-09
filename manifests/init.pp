class ntp_final(
  String $package_name                = $ntp_final::params::package_name,
  String $package_ensure              = $::ntp_final::params::package_ensure,
  String $config_name                 = $::ntp_final::params::config_name,
  String $config_mode                 = $::ntp_final::params::config_mode, 
  String $service_ensure              = $::ntp_final::params::service_ensure,
  Boolean $service_enable             = $::ntp_final::params::service_enable,
  Boolean $service_hasstatus          = $::ntp_final::params::service_hasstatus, 
  Boolean $service_hasrestart         = $::ntp_final::params::service_hasrestart,
  Array[String] $servers              = $::ntp_final::params::servers,
  String $service_name                 = $::ntp_final::params::service_name,
  )inherits ::ntp_final::params {
     class { '::ntp_final::install': }
     -> class { '::ntp_final::config': }
     ~> class { '::ntp_final::service': }
    }
