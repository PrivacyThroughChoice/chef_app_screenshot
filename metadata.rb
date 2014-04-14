name             'chef_app_screenshot'
maintainer       'Fraser Scott'
maintainer_email 'admin@privacythroughchoice.org'
license          'All rights reserved'
description      'Installs/Configures chef_app_screenshot'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

depends 'yum', '~> 3.2'
depends 'apt', '~> 2.3'
depends 'phantomjs', '~> 1.0'
depends 'git', '~> 4.0'
