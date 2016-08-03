class skeleton {
file {'/etc/skel':
   ensure => directory,
   owner => 'root',
   group => 'root',
   mode => '0755',
}

file {'/etc/skel/bash.rc':
  ensure => file,
  owner => 'root',
  group => 'root',
  source => 'puppet:///modules/skeleton/bashrc',
  }
}


