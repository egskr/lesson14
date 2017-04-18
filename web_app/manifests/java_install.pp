class web_app::java_install (
) inherits web_app::params


 {

  package { 'java':
    name   => $java_version,
    ensure  => installed,
  }
                       
}
