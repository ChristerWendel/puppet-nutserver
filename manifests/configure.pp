# == Class: nutserver::configure
#
# Configures the nut server
class nutserver::configure {
  file { '/etc/nut/nut.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'nut',
    mode    => '0640',
    content => 'MODE=netserver',
  }

  file { '/etc/nut/ups.conf':
    ensure => present,
    owner  => 'root',
    group  => 'nut',
    mode   => '0640',
    source => 'puppet:///modules/nutserver/ups.conf',
  }
}
