class flask_setup {
  # Ensure Python3 and pip are installed
  package { 'python3':
    ensure => installed,
  }

  package { 'python3-venv':
    ensure => installed,
    require => Package['python3'],
  }

  # Create a virtual environment
  exec { 'create_virtualenv':
    command => '/usr/bin/python3 -m venv /home/flask_venv',
    creates => '/home/flask_venv',
    path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
    require => Package['python3-venv'],
  }

  # Install Flask in the virtual environment
  exec { 'install_flask':
    command => '/home/flask_venv/bin/pip install flask',
    path    => ['/usr/bin', '/usr/sbin', '/bin', '/sbin'],
    require => Exec['create_virtualenv'],
  }

  # Create README.md file
  file { '/home/README.md':
    ensure  => file,
    content => "My first taste of IaC using Puppet!\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}

# Apply the flask_setup class
include flask_setup


