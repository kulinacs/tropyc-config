dhcpcd
=========

Configures dhcpcd

Requirements
------------

No requirements

Role Variables
--------------

Required:

	network_interfaces: a hash of hashes describing each network interface
	  <interface_name>: 
	    static: True/False
        (If Static)
		ip_address: Interface IP
        routers: Gateway IP
        domain_name_servers:
		  - List of DNS Servers



Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.dhcpcd,
		 network_interfaces:
	       eth0:
             static: False
           eth1:
             static: True
             ip_address: 192.168.73.37
             routers: 192.168.73.1
             domain_name_servers:
               - 8.8.8.8
               - 8.8.4.4
		   }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
