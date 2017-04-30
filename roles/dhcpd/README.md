dhcpd
=====
Configures dhcpd

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
    subnets:
      <subnet-name>:
        network: dhcp network
        netmask: Netmask
        range_min: dhcp pool lower
        range_max: dhcp pool upper
        routers: router (optional)
        domain_name: domain name (optional)
        dns_servers: dns server (optional)
        ntp_servers: ntp server (optional)
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
