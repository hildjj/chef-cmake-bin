name             'cmake-bin'
maintainer       'Joe Hildebrand'
maintainer_email 'joe-github@cursive.net'
license          'MIT'
description      'Installs cmake'
long_description 'Installs cmake from binaries'
version          '0.2.0'

recipe "cmake-bin::default", "Install cmake binaries"

supports "debian"
supports "ubuntu"
supports "redhat"
supports "centos"
supports "fedora"
