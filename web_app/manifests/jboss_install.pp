class web_app::jboss_install  (
        ) inherits web_app::params

 {

  group { $jboss_group:
    ensure => 'present',
  }

  user { $jboss_user:
    ensure  => 'present',
    groups  => $jboss_group,
  }

  file { $jboss_zip_file:
    source => $jboss_downl_url,          
  }

  exec { 'extract_jboss':
    command     => "tar xzf $jboss_zip_file -C $jboss_path",
    path        => '/bin/',
    creates => $jboss_home,
    require => File[$jboss_zip_file],
  }
                 
}
