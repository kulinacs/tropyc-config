gateway
=======

Configures traffic to be forwarded between "internal" and "external" interfaces

Requirements
------------

No requirements

Role Variables
--------------

Required:

	network_interfaces:
	  <interface_name>:
	    external: true/false
	
Dependencies
------------

iptables

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.gateway,
		 network_interfaces:
		   eth0:
             external: true
	       eth1:
             external: false
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
