class inspheris_bootstrap {

 exec { 'apt-get update':
   command => 'apt-get update',
   path => ['/usr/bin', '/bin', '/usr/sbin', '/sbin', '/usr/local/bin', '/usr/local/sbin/']
 }

## Install webserver
  package { 'apache2':
    ensure => installed,
  }
 
  package {'libapache2-mod-jk':
    ensure => installed,
    require => Package['apache2'],
  }
  package { ['mysql-server', 'mysql-client']: 
    ensure => 'installed',
  }
  
     
## Install some utilities
  package { [ 'git','htop', 'nmap', 'vim', 'vim-common', 'emacs' ]:
    ensure => installed,
  }


}

include solr
include inspheris_bootstrap
