#!/bin/bash
# bootstrap/user.sh
#
# executed from the system boot strap
# The perl install and modules are userbased
# This is done with perlbrew.
# cpan can be used to itemize other module dependencies
# The perl version can also be updated here.
# To do so "vargant up|reload --provision"

# Install perlbrew
curl -L http://install.perlbrew.pl | bash
echo 'source ~/perl5/perlbrew/etc/bashrc' >> $HOME/.profile
source ~/perl5/perlbrew/etc/bashrc

# Install local Perl and app libs
perlbrew install perl-5.20.0
perlbrew switch perl-5.20.0
perlbrew install-cpanm
cpanm Mojolicious
cpanm Mango

# The MIT License (MIT)
#
# Copyright (c) 2014 Brian Wisti <brian.wisti@gmail.com>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
