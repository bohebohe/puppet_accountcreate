class create_account::addsudo{
   file
   {"/etc/sudoers.d/sudogroup":
	content => template("create_account/sudogroup"),
   }
}
