obsd-autoinstall
================
Provisions a PXE and auto install setup for OpenBSD

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
obsd_rd: where the obsd.rd file is located (locally)
obsd_pxe: where the pxe file is located (locally)
obsd_bootconf: where the boot configuration is located (locally)
obsd_webroot: where to serve autoinstall files from
obsd_hostname: hostname
obsd_interface: primary interface
obsd_domain: domain name
obsd_password: the password for the root account
obsd_pubkey: the key for the root account
obsd_x: <string> if X is going to be used
obsd_com0: <string> if com0 is default
obsd_baud: serial baudrate
obsd_timezone: timezone
obsd_server: repository url
obsd_server_path: path to repository
obsd_sets:
  - list of packages to set installer
```

Dependencies
------------
No Dependencies

License
-------
ISC

Author Information
------------------
Nicklaus McClendon <nicklaus@kulinacs.com>
