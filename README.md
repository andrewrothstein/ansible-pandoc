andrewrothstein.pandoc
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-pandoc.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-pandoc)

Installs [pandoc](https://pandoc.org/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.pandoc
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
