addusers
=========

Adds users and their ssh public keys

Requirements
------------

No requirements

Role Variables
--------------

	users: a hash of hashes describing each user
		<username>: 
			password: (Optional) crypted password
			group: (Optional) primary group
			groups: (Optional) comma separated list of additional groups
			append: (Optional) true/false, if the additional groups should be appended
			pub_key: (Optional) public key to be added



Dependencies
------------

No dependencies

Example Playbook
----------------

    - hosts: servers
      roles:
         - { 
		 role: kulinacs.addusers,
		 users:
		   kulinacs:
             groups: wheel
             password: "{{ vault_users.kulinacs.password }}"
             pub_key: "{{ lookup('file', 'keys/kulinacs/id_personal.pub') }}"
           root:
             password: "{{ vault_users.root.password }}"
		   }

License
-------

ISC

Author Information
------------------

Nicklaus McClendon <nicklaus@kulinacs.com>
