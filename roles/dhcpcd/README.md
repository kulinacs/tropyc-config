dhcpcd
======
Configures dhcpcd

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
```
---
network_interfaces: a hash of hashes describing each network interface
  <interface_name>:
    static: True/False
    ip_address: Interface IP
    routers: Gateway IP
    domain_name_servers:
      - List of DNS Servers
```

Dependencies
------------
No Dependencies

License
-------
ISC

Author Information
------------------
kulinacs <nicklaus@kulinacs.com>
