#!/bin/bash
# bootstrap/user.sh

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
