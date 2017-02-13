doas
====

Configures doas. Currently allows wheel without password because of the Ansible
bug.

Requirements
------------

No requirements


Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.doas,
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
