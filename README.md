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


## License

The MIT License (MIT)

Copyright (c) 2014 Brian Wisti <brian.wisti@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
