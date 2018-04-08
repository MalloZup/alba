## What is alba?

Alba is a modular development-kit for start your CI/CD project in the right way.

Each module is stand-alone working piece and consist of the usage/integration of terraform and saltstack for provisioning and deploy.

You need only to install terraform and do ```terraform apply``` for having a working module.

## Installation

openSUSE and SUSE Linux Enterprise Server:
```
# Uncomment one of the following lines depending on your distro

#sudo zypper addrepo https://download.opensuse.org/repositories/systemsmanagement:/sumaform/openSUSE_Leap_42.3/systemsmanagement:sumaform.repo
#sudo zypper addrepo https://download.opensuse.org/repositories/systemsmanagement:/sumaform/SLE_12_SP3/systemsmanagement:sumaform.repo

sudo zypper install terraform-provider-libvirt git-core
git clone https://github.com/moio/sumaform.git
```

Ubuntu and Debian:
```
sudo apt install alien
wget https://download.opensuse.org/repositories/systemsmanagement:/sumaform/SLE_12_SP1/x86_64/terraform.rpm
sudo alien -i terraform.rpm
wget https://download.opensuse.org/repositories/systemsmanagement:/sumaform/SLE_12_SP1/x86_64/terraform-provider-libvirt.rpm
sudo alien -i terraform-provider-libvirt.rpm
git clone https://github.com/moio/sumaform.git
```

NOTE: be sure to have [SUSE's CA certificates](http://ca.suse.de/) installed on your system.


## How to run each module:

1) Adapt your main tf

```bash
vim main.tf
```

You can combine also different modules.


2) run
```bash
terraform init
terraform apply
```

## What are the current modules:

* Controller (ctl module) for Web-testing automation  (with chrome headless and cucumber ruby)
  [Controller-webtesting](ctl.md)

### Alba and sumaform:

The alba project is a opensource project that take the original design from sumaform.
https://github.com/moio/sumaform/ and is based on terraform-libvirt-plugin https://github.com/dmacvicar/terraform-provider-libvirt
Furthermore the packages and images are the same as sumaform project.

Thx to all contributors for this 2 projects! 
