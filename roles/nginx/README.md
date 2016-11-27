nginx
=====

Configures nginx, and sets up servers to be read from servers.d/*.conf

Requirements
------------

No requirements

Role Variables
--------------

Required:

	nginx_https: whether https traffic should be allowed through the firewall

Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.nginx.
		 nginx_https: true
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
