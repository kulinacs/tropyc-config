addusers
========


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
users: a hash of hashes describing each user
  <username>:
    password: (Optional) crypted password
    group: (Optional) primary group
    groups: (Optional) comma separated list of additional groups
    append: (Optional) true/false, if the additional groups should be appended
    pub_key: (Optional) public key to be added\n"
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
