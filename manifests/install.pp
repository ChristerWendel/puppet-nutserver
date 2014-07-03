# == Class: nutserver::install
#
# Installs the nut-server package
class nutserver::install {
  package { 'nut-server':
    ensure => $nutserver::version,
  }
}
