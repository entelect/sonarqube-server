# Introduction

This repository contains the necessary infrastructure-as-code for setting up
a SonarQube instance running in Docker containers on a Ubuntu server host.

## Preparation
You will need a Linux host to run Ansible scripts from, but to avoid issues
around compatibility between different versions of Vagrant it's recommended
that you use the included Vagrant __control01__ host for development and
production runs of Ansible playbooks. Whether running on Linux yourself or
in Git Bash from Windows, you must ensure that you have an SSH key-pair in
`~/.ssh`.

The included Vagrantfile needs the hostmanager plugin, so if you are going
to use the Vagrant boxes please run he following to install it:
`vagrant plugin install vagrant-hostmanager`.

If you are doing development against the Vagrant hosts, the Vagrantfile will
take care of copying your private key to the control host and the public key
to the target hosts.

If instead you are going to be working on production you should use something
like `ssh-copy-id infrastructure@192.168.2.160` to add your public key to the
target host's `~/.ssh/authorized_keys` file.
