class consulconfig {
  exec { 'prepare-consul':
    command => '/usr/bin/wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg && /usr/bin/echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list';
  }

  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  package { ['consul']:
    ensure => present,
    provider => 'apt';
  }

  file{"/usr/local/etc/consul/":
    ensure  =>  directory,
    mode    =>  '0644';
  }

  file { 'set config json file for consul node':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/consulconfig/config.json',
    path    => '/usr/local/etc/consul/config.json';
  }

  file { 'set consul.service file for consul node':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source => 'puppet:///modules/consulconfig/consul.service',
    path    => '/etc/systemd/system/consul.service';
  }

  exec { 'reload daemon':
    command => '/usr/bin/systemctl daemon-reload',
  }

  # service { "consul":
  #   ensure => running,
  #   enable => true,
  #   require => Package['consul']
  # }
}
