#!/usr/bin/python3
class { 'python':
  version    => '3',
  pip        => 'present',
  manage_gunicorn => false,
  dev        => true,
}

python::pip { 'Flask':
  ensure   => '2.1.0',
  pip_provider => 'pip3',
}
