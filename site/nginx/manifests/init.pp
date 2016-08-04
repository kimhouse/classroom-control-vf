class nginx {

package {'nginx':
 ensure => present,
}

file {'var/www/':
 ensure => directory,
 owner  => 'root',
 group  => 'root',
}

file { '/etc/nginx/nginx.conf':
 ensure => file,
 owner  => 'root',
 group  => 'root',
 }
 
file {'/etc/nginx/conf.d/default.conf':
 ensure => file,
 owner  => 'root',
 group  => 'root',
 source => 'puppet:///modules/nginx/default.conf',
 }

file {'var/www/index.html':
 ensure => file,
 owner  => 'root',
 group  => 'root',
 source => 'puppet:///modules/nginx/index.html',
}

service {'nginx':
 ensure => running,
 enable => true,
}

}
