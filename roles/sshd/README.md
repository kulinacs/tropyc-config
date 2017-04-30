sshd
====
Configures sshd

Requirements
------------
No Requirements

Role Variables
--------------
None

Role Defaults
-------------
'''---
sshd_port: 22
sshd_x11_forwarding: 'no'
'''

Extra Variables
---------------
'''---
sshd_root_login: whether root login is allowed over ssh
sshd_pass_auth: whether passwords are allowed for authentication
sshd_key_auth: whether ssh keys are allowed for authentication
sshd_host_keys:
  - ed25519
  - rsa
  - ecdsa
  - dsa
'''

Dependencies
------------
No Dependencies

License
-------
ISC

Author Information
------------------
kulinacs <nicklaus@kulinacs.com>
