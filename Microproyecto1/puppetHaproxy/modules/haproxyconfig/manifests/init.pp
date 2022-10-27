class haproxyconfig {

  package { ['haproxy']:
    ensure => present,
    provider => 'apt';
  }
  
  file { 'set haproxy config file':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/haproxyconfig/haproxy.cfg',
    path    => '/etc/haproxy/haproxy.cfg';
  }

  file { 'set 503 error page for haproxy':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/haproxyconfig/503.http',
    path    => '/etc/haproxy/errors/503.http';
  }

  exec { 'reload daemon for haproxy':
    command => '/usr/bin/systemctl daemon-reload',
  }

  # service { "haproxy":
  #   ensure => running,
  #   enable => true,
  #   require => Package['haproxy']
  # }
}
