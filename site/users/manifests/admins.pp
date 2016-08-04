class users::admins {

users::managed_users {'jose': }
users::managed_users {'alice':
 group => 'superusers',
}
users::managed_users {'chen':}

group { 'superusers':
 ensure => present
 
 }




}


