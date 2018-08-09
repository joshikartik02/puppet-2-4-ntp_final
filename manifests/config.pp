class ntp_final::config(
  String $config_name    = $::ntp_final::config_name,
  String $config_mode    = $::ntp_final::config_mode,
  Array[String] $servers = $ntp_final::servers,
  ) {
     file { "/etc/${config_name}":
       ensure => file,
       owner  => root,
       group  => root,
       mode   => $config_mode,
       content => template("$module_name/ntp.conf.erb")
       }
    }

