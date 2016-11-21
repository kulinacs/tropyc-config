sudoers
=======

Configures the sudoers group

Requirements
------------

No requirements

Role Variables
--------------

Required:

	sudoers_group: the group that can use sudo
	
Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.sudoers,
		 sudoers_group: wheel
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
