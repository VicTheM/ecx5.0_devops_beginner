# Puppet manifest to set up Flask and create a README.md file
node default {
    # Ensure pip is installed for Python package management
    package { 'python3-pip':
        ensure => installed,
    }

    # Install Flask using pip
    exec { 'install_flask':
        command => '/usr/bin/pip3 install flask',
        path    => ['/usr/bin', '/usr/local/bin'],
        require => Package['python3-pip'],
    }

    # Create the README.md file in the home directory
    file { '/home/Tekkarashi/README.md':
        ensure  => file,
        content => "My first taste of IaC using Puppet!\n",
        mode    => '0644',
        owner   => $::id,
        group   => $::id,
    }
}

