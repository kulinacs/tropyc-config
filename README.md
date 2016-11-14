Tropyc Config
=============

This is the configuration for my personal network, Tropyc. The roles are designed
to be modular and can be used as such. This repository follows the following 
guidelines:

Ansible Best Practices
----------------------

[https://docs.ansible.com/ansible/playbooks_best_practices.html](https://docs.ansible.com/ansible/playbooks_best_practices.html) 

Ansible best practices are followed when reasonable to do so. The following are
emphasized:

* Task And Handler Organization For A Role
* Version Control
* Variables and Vaults
* Role Modularity

These are emphasized to encourage Ansible's use as a state-driven resource model.
Use of "sane defaults" and complicated roles harken back to configuration with
shell scripts, with the executing user possibly unsure of what state is being 
applied. By forcing requiring applied configuration to be explicitly specified,
the state of a server can be represented with a single YAML file of variables,
the overall goal of this repository.

Kerckhoffs' Principle (Shannon's Maxim)
---------------------------------------

> "One ought to design systems under the assumption that the enemy will immediately gain full familiarity with them"

This repository contains the entire configuration of my personal network, 
including encrypted password files. This is in an attempt to apply Kerckhoffs'
principle to boxen I manage. Assuming configuration is done properly and the
implentation of Ansible Vault's encryption (AES from Python Cryptography), this
does not pose a security risk.

Licensing
---------
Each role is individually licensed. Those written solely by me will be found with
an ISC license, while those I have modified will be found with their original 
license included.
