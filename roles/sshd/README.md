sshd
====

Configures sshd

Requirements
------------

No requirements

Role Variables
--------------

Required:

	sshd_root_login: whether root login is allowed over ssh
	sshd_pass_auth: whether passwords are allowed for authentication
	sshd_key_auth: whether ssh keys are allowed for authentication
	sshd_host_keys:
	  - ed25519
	  - rsa
	  - ecdsa
	  - dsa

Optional:
	
	sshd_port: the port sshd should listen on (defaults to 22)
	sshd_x11_forwarding: whether x11 forwarding is enabled (defaults to no)

Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.sshd,
		 sshd_root_login: "no",
		 sshd_pass_auth: "no",
		 sshd_key_auth: "yes",
		 sshd_host_keys:
		   - ed25519
		   - rsa
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
