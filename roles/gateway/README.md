gateway
=======
Configures traffic forwarding

Requirements
------------
No Requirements

Role Variables
--------------
None

Role Defaults
-------------
None

Extra Variables
---------------
'''---
network_interfaces:
  <interface_name>:
    external: true/false
'''

Dependencies
------------
* ferm

License
-------
ISC

Author Information
------------------
kulinacs <nicklaus@kulinacs.com>
