class ntp_final::params { 
  $package_name       = 'ntp'
  $package_ensure     = 'present'
  $config_name        = 'ntp.conf'
  $config_mode        = '0644'
  $service_ensure     = 'running'
  $service_enable     = true
  $service_hasstatus  = true
  $service_hasrestart = true
  $servers                    = ['server 0.centos.pool.ntp.org iburst', 'server 1.centos.pool.ntp.org iburst']
  $service_name                = $facts['os']['family'] ? {
     'Debian' => 'ntp',
     default  => 'ntpd',
     } 
 } 
