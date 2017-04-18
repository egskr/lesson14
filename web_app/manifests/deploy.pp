class web_app::deploy  (
        ) inherits web_app::params

{
  file { $app_zip_file:
    source => $app_link,          
  }

  package { 'unzip':
    ensure  => installed,
  }

  exec { 'extract_app':
    command     => "unzip -j $app_zip_file -d $jboss_app_folder",
    path        => '/bin/',
    require => Package['unzip'],
  }

}

