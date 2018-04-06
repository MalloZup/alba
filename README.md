# Alba

Using terraform and chromedriver plus cucucumber for testing a webui application.

![alba](help/alba.png)

## Install

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


## How to run:

1) Adapt

```bash
vim main.tf
```

2) run
```bash
terraform init
terraform apply
```
