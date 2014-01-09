name             'testing'
maintainer       'me'
maintainer_email 'me'
license          'All rights reserved'
description      'Installs/Configures portal servers'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

# The receipies that we are providing
recipe           'portal::shutdown', 'Base configuration'

# Supported OS'es
%w{
	amazon
	ubuntu
}.each do |os|
	supports os
end
