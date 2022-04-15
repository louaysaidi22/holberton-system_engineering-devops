# a manifest that kills a process named killmenow
exec { 'killmenow':
  path     => '/usr/bin',
  command  => '/usr/bin/pkill killmenow'
}