class flask_setup {

  # Ensure Python and pip are installed
  package { ['python3', 'python3-pip']:
    ensure => installed,
  }

  # Install Flask using pip, only if it's not already installed
  exec { 'install_flask':
    command => '/usr/bin/pip3 install Flask',
    path    => ['/usr/bin', '/usr/local/bin', '/bin'],
    unless  => '/usr/bin/pip3 show Flask',  # Ensure idempotency
    require => Package['python3-pip'],      # Ensure pip is installed first
  }

  # Create README.md file in the user's home directory
  file { "/home/${::id}/README.md":
    ensure  => file,
    content => "My first taste of IaC using Puppet!\n",
    owner   => $::id,  # Dynamically assign owner based on the current user
    group   => $::id,  # Dynamically assign group based on the current user
    mode    => '0644', # Set appropriate file permissions
  }
}

# Apply the class
include flask_setup

