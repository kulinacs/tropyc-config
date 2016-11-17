iptables
========

Configures a iptables rules for services considered required functionality,
ssh, DNS, and access to a package repository.

Requirements
------------

No requirements

Role Variables
--------------

Required:

	iptables_dns_allow: if outbound DNS traffic is allowed
	iptables_ssh_allow: if outbound and inbound SSH traffic is allowed

Optional:
	
	xbps_repo: the xbps repository url to use (defaults to https://repo.voidlinux.eu/current)

Dependencies
------------

kulinacs.dhcpcd

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.iptables,
		 iptables_dns_allow: true,
		 iptables_ssh_allow: true
		 }

License
-------

MIT

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
