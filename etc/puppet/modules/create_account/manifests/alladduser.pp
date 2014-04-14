class create_account::alladduser{
    create_account::adduser
    {   "test1":
        uid => 510,
        gid => 521,
	password =>'test1',
        groups =>"testgroup1"
    }
    create_account::adduser
    {   "test2":
        uid => 511,
        gid => 521,
	password =>'test2',
        groups =>"testgroup2"
    }
}
