Hostname
=========

Configures the hostname

Requirements
------------

No requirements

Role Variables
--------------

Required:

	hostname: the desired hostname of the machine

Optional:
	
	fqdn: the desired fqdn of the machine

Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.hostname,
		 hostname: localhost,
		 fqdn: localhost.localdomain
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
