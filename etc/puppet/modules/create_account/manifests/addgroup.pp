class create_account::addgroup{
   group 
   {    "testgroup1":
        gid => 520,
        ensure => present
   }
   group
   {    "testgroup2":        
	gid => 521,
        ensure => present
   }
}
