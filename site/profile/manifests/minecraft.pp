class profile::minecraft{
  #include minecraft
  class {'minecraft':
    install_dir = '/svr/minecraft'
  }
}
