class nginx {

package {'nginx':
 ensure => present,
}
File {
 owner => 'root',
 group => 'root',
 mode  => '0644',
 }

file {'/var/www/':
 ensure => directory,
}

file { '/etc/nginx/nginx.conf':
 ensure => file,
 source => 'puppet:///modules/nginx/nginx.conf',
 }
 
file {'/etc/nginx/conf.d/default.conf':
 ensure => file,
 source => 'puppet:///modules/nginx/default.conf',
 }

file {'/var/www/index.html':
 ensure => file,
 source => 'puppet:///modules/nginx/index.html',
}

service {'nginx':
 ensure => running,
 enable => true,
 subscribe => [ File['default.conf'], File['ngnix.conf']],
 
}

}
