#set up your client SSH configuration file so that you can connect to a server without typing a password.
file_line { 'SSH config to use the private key':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => "IdentityFile ~/.ssh/school",
}

file_line { 'SSH config to refuse to authenticate using a password':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => "PasswordAuthentication no",
}
