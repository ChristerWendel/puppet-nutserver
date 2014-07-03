# == Class: nutserver
#
# A module to handle network ups tools server
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class nutserver (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'nutserver::install': } ->
    class{'nutserver::configure': } ~>
    class{'nutserver::service': } ->
    Class['nutserver']
  }
