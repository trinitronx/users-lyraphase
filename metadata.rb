name             'users-lyraphase'
maintainer       'James Cuzella'
maintainer_email 'james.cuzella@lyraphase.com'
license          'Apache 2.0'
description      'Sets up lyraphase defined users using the standard chef users cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.3'

depends 'users'
depends 'ssh_known_hosts'

# For use in vagrant and chef-solo, this is required. In chef-client, this cookbook is a no-op
depends 'chef-solo-search'
