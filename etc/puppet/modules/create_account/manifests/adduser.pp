define create_account::adduser($uid=undef, $gid=undef, $groups=undef,$password=undef){

    $username = $title

    $dotssh = "/home/$username/.ssh/"

    user { "$username":
            ensure     => present,
            comment    => "$username user",
            groups     => $groups,
            uid        => $uid,
            gid        => $gid,
            password   =>$password,
            home       =>  "/home/$username",
            managehome => true,
            shell      => "/bin/bash",
          }

    file { "$dotssh" :
            ensure  => directory,
            owner   => $username,
            group   => $groups,
            mode    => 700,
            path    => $dotssh,
            require => User["$username"],
          }

    file { "$username.ssh.authkeys":
            owner   => $username,
            group   => $groups,
            mode    => 600,
            path    => "$dotssh/authorized_keys",
            content => template("create_account/$username"), 
            require => File["$dotssh"],
        }
}
