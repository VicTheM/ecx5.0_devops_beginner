#installing flask
exec { 'install flask':
  command => '/usr/bin/pip3 install flask',
  path    => ['/usr/bin', '/bin'],
}

#creating the readme file
file { '/home/Ginika/ecx5.0_devops_beginner/student_009/README.md':
  ensure  => 'file',
  content => 'My first taste of Iac using Puppet!',
}

