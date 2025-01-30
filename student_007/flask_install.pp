

class flask_install {
  package { ['python3', 'python3-venv', 'python3-pip']:
    ensure => installed,
  }
#Install flask in a virtual env 
  exec { 'create_virtualenv':
    command => 'python3 -m venv /home/flask_env',
    creates => '/home/flask_env',
    path    => ['/usr/bin', '/usr/local/bin'],
    require => Package['python3-venv'],
  }

  exec { 'install_flask_in_virtualenv':
    command => '/home/flask_env/bin/pip install flask',
    path    => ['/usr/bin', '/usr/local/bin'],
    require => Exec['create_virtualenv'],
  }


#Create README.md in the home directory
  file { '/home/README.md':
    ensure  => file,
    content => "My first taste of IaC using Puppet!\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}

include flask_install
