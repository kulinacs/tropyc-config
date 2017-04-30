ferm
====
Configures iptables with ferm

Requirements
------------
No Requirements

Role Variables
--------------
None

Role Defaults
-------------
'''---
xbps_repo: https://repo.voidlinux.eu/current
'''

Extra Variables
---------------
```
---
firewall_dns_allowed: if outbound DNS traffic is allowed
firewall_ssh_allowed: if outbound and inbound SSH traffic is allowed
firewall_input_policy: default input policy
firewall_output_policy: default output policy
firewall_forward_policy: default forward policy
```

Dependencies
------------
* dhcpcd

License
-------
ISC

Author Information
------------------
kulinacs <nicklaus@kulinacs.com>
