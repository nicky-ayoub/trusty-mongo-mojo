tasty-mongo-mojo
================

Vagrant box for MongoDB + Perl 5.20 + Mojolicious + Mango

This is an [Ubuntu](http://ubuntu.com) 14.04 64 bit base, focused on developing Web applications with [Perl 5](http://perl.org), [Mojolicious](http://mojolicio.us), and [MongoDB](http://mongodb.org). [Mango](https://metacpan.org/pod/Mango) is used as the MongoDB driver for Perl.

## Components

* `mongodb-org` 2.6.3 is installed using the [mongodb.org Ubuntu instructions](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
* `build-essentials`
* [Perlbrew](http://perlbrew.pl) and [cpanm](https://metacpan.org/release/App-cpanminus) set up for Vagrant user
* Perl 5.20.0 installed via Perlbrew
* Mojolicious 5.24 installed via cpanm
* Mango 1.04 installed via cpanm

## Suggestions

* Set port forwarding on your box so that Mojolicious apps can be viewed from browsers on the host.

```
config.vm.network "forwarded_port", guest: 3000, host: 3000
```
