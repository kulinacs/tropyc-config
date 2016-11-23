openntpd
========

Configures openntpd

Requirements
------------

No requirements

Role Variables
--------------

Required:

	ntp_server: if openntpd should also function as a server
	ntp_servers: a list of ntp servers

Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - {
		 role: kulinacs.sudoers,
		 ntp_server: true,
		 ntp_servers:
		   - pool.ntp.org
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
