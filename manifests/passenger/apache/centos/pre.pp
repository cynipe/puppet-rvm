class rvm::passenger::apache::centos::pre {
  # Dependencies
  # TODO no idea why httpd conflicts with puppetlabs/apache
  # if ! defined(Package['httpd'])       { package { 'httpd':       ensure => present } }
  if ! defined(Package['httpd-devel']) { package { 'httpd-devel': ensure => present } }
  if ! defined(Package['mod_ssl'])     { package { 'mod_ssl':     ensure => present } }
}
