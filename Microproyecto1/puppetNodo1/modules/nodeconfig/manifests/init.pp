class nodeconfig {
  package { ['nodejs', 'npm']:
    ensure => present,
    provider => 'apt';
  }

  file{"/home/vagrant/app/":
    ensure  =>  directory,
    mode    =>  '0644';
  }

  file{"/home/vagrant/app/views/":
    ensure  =>  directory,
    mode    =>  '0644';
  }

  file { 'set index.js':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/nodeconfig/index.js',
    path    => '/home/vagrant/app/index.js';
  }

  file { 'set index.ejs':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/nodeconfig/index.ejs',
    path    => '/home/vagrant/app/views/index.ejs';
  }

  exec { 'install node, ejs and express':
    command => '/usr/bin/npm install consul && /usr/bin/npm install express && /usr/bin/npm install ejs',
    cwd => '/home/vagrant/app/';
  }

  file { 'set node.service file for nodejs service':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/nodeconfig/node.service',
    path    => '/etc/systemd/system/node.service';
  }

  exec { 'reload daemon for nodejs':
    command => '/usr/bin/systemctl daemon-reload',
  }

  # service { "node":
  #   ensure => running,
  #   enable => true,
  #   require => Package['nodejs']
  # }
}
