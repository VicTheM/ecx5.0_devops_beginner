exec { 'install_flask':
    command => 'usr/bin/install_flask',
    path => ['/usr/bin', 'usr/local/bin'],
    onlyif => '/usr/bin/python3 -m pip show flask > /dev/null 2>$&1 || exit 1',
}

file { '/home/README.md':
    ensure => 'file',
    content => 'My first taste of IaC using Puppet!',
    owner => 'root',
    group => 'root',
    mode => '0644',
    require => Exec['install_flask'],
}
