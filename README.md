Inspheris Dev setup using vagrant

[Librarian-puppet](https://github.com/rodjek/librarian-puppet)

[Puppet](http://puppetlabs.com/)

[Vagrant](http://vagrantup.com).


## How to use

This repository is really just a template; copy the relevant files into your
own project. Here's a breakdown of what's required:

* `Vagrantfile` - the included example has three important sections:
    + A VirtualBox configuration line to allow symlinking in your Vagrant root
    + A shell provisioner definition
    + A Puppet provisioner definition
* `shell/main.sh` - a simple shell provisioner to install and run Librarian-puppet.
Note that it requires git to be installed on your VM, so either install it on your basebox
or add a line in the shell provisioner to install it; an example is in the file. You also need to
configure this script to install Puppet modules in the correct place. By default, it will put them
in `/etc/puppet`.
* `puppet/Puppetfile` - configuration describing what Puppet modules to install. See the
[Librarian-puppet](https://github.com/rodjek/librarian-puppet) project for details.
* `puppet/manifests/main.pp` - your main Puppet manifest.
* `puppet/.gitignore` - configured to ignore temporary directories and files created by Librarian-puppet.

## Contribute

Patches and suggestions welcome.

## Issues

Please raise issues via the github issue tracker.

## License

Please see the [LICENSE](https://github.com/purple52/librarian-puppet-vagrant/blob/master/LICENSE)
file.
