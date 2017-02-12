tftp
====

Configures tftp

Requirements
------------

No requirements

Role Variables
--------------

Optional:

	tftp_root: where tftp files are served from (defaults to /srv/tftp)

Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - {
		 role: kulinacs.tftp
		 }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
