xbps
====

Configures xbps repositories

Requirements
------------

No requirements

Role Variables
--------------

Required:

	xbps_repo: the primary xbps repository

Optional:
	
	xbps_repo_options: a list of repositories to include along the base
	  - multilib
	  - nonfree
	  - multilib-nonfree
	
Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.xbps,
		 xbps_repo: https://repo.voidlinux.eu/current,
		 xbps_repo_options:
		   - multilb
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
