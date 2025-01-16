class flask_setup {

  # Ensure Python and pip are installed
  package { ['python3', 'python3-pip']:
    ensure => installed,
  }

  # Install Flask using pip
  exec { 'install_flask':
    command => '/usr/bin/pip3 install Flask',
    path    => ['/usr/bin', '/bin'],
    unless  => '/usr/bin/pip3 show Flask',
  }

  # Create README.md file in the home directory
  file { '/home/README.md':
    ensure  => file,
    content => "My first taste of IaC using Puppet!\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}

# Apply the class
include flask_setup

