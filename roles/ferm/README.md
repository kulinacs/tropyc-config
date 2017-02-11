ferm
====

Configures iptables rules for services considered required functionality,
ssh, DNS, and access to a package repository using ferm.

Requirements
------------

No requirements

Role Variables
--------------

Required:

	firewall_dns_allowed: if outbound DNS traffic is allowed
	firewall_ssh_allowed: if outbound and inbound SSH traffic is allowed
	firewall_input_policy: default input policy
	firewall_output_policy: default output policy
	firewall_forward_policy: default forward policy

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
		 role: kulinacs.ferm,
		 firewall_dns_allowed: true,
		 firewall_ssh_allowed: true,
		 firewall_input_policy: ACCEPT,
		 firewall_output_policy: DROP,
		 firewall_forward_policy: DROP
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
