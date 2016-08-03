class memcached {
   package {'memcached':
     ensure => present
   }
   
   
   file {'/etc/sysconfig/memcached':
     ensure => file,
     owner => 'root',
     group => 'root',
     port => '11211',
     user => 'memcached',
     maxconn => '96',
     cachesize => '32',
     require => Package['memcached'],
   }
   
   
   service {'memcached':
    ensure => running,
    enable => true,
   }
   
   }
