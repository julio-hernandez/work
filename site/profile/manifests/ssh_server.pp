class profile::ssh_server{
  package {'openssh-server':
    ensure =>enable,
  }
  service {'sshd':
    ensure =>'running',
    enable =>'true',
  }
  ssh_authorized_key{'root@master.puppet.vm':
    ensure =>present,
    user =>'root',
    type =>'ssh-rsa',
    key ='AAAAB3NzaC1yc2EAAAADAQABAAABAQDq+krePAhcTuNxFwooSRlZcQ6idH3ljuaub4aLniIsFE7Hgqz5lUJAXeMQOy+6y3TbKnAglN8EBCPzPWQwYih+xR4Cl39ZtdCIRb1X1z52oTjyyZoiEhU7NwWweVihuHLwVHIvL0XK6NdNgkFfA7fCA6kld/ciE48/Hu7lH9JLLH7p76VMaav4cpn3+5p3vIcNewlOPPEuGCVZvETrdbvWBGMTcVQBDQWjDTjliFIkKc1MNbG+hSQcQ7kZ7v4uvpmI/EtIo7tMugGsmsmhvqQWeL9sShDg0H4HCYBL2e7FVMVRRbTR1TO10Wyq6Srw/M9+Eby0pInNiXZk5u6KXMKB root@master.puppet.vm',
  }

}
