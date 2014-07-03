# == Class: nutserver::service
#
# Controls the nut service
class nutserver::service {
  $ensure = $nutserver::start ? {true => running, default => stopped}

  service { 'nut-server':
    ensure => $ensure,
    enable => $nutserver::enable,
  }
}
