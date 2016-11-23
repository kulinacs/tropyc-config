dhcpd
=====

Configures dhcpd (currently only supports serving on a single interface)

Requirements
------------

No requirements

Role Variables
--------------

	network_interfaces: a hash of hashes describing each network interface
	  <interface_name>: 
        subnets:
          <subnet-name>: 
            network: dhcp network
			netmask: Netmask
			range_min: dhcp pool lower
			range_max: dhcp pool upper
			routers: router (optional)
			domain_name: domain name (optional)
			dns_servers: dns server (optional)
			ntp_servers: ntp server (optional)


	
Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.dhcpd,
		 network_interfaces:
           eth1:
		     subnets:
		       192-168-73-0:
			     network: 192.168.73.0
				 netmask: 255.255.255.0
				 range_min: 192.168.73.100
				 range_max: 192.168.73.199
				 routers: 192.168.73.1
				 domain_name: .network
				 dns_servers: 8.8.8.8
				 ntp_servers: 192.168.73.1
		   }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
