# == Class consul::config
#
# This class is called from consul
#
class consul::config {

  file { $consul::config_dir:
    ensure => 'directory',
  } ->
  file { 'config.json':
    path    => "${consul::config_dir}/config.json",
    content => template('consul/config.json.erb'),
  }

}
