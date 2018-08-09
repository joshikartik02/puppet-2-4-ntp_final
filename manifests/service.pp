class ntp_final::service(
  String $service_ensure      = $::ntp_final::service_ensure,
  String $service_name        = $::ntp_final::service_name,
  Boolean $service_enable     = $::ntp_final::service_enable,
  Boolean $service_hasstatus  = $::ntp_final::service_hasstatus,
  Boolean $service_hasrestart = $::ntp_final::service_hasrestart,
  )
    {
      service { 'ntp':
      ensure     => $service_ensure,
      enable     => $service_enable,
      name       => $service_name, 
      hasstatus  => $service_hasstatus,
      hasrestart => $service_hasrestart,
      }
    }
