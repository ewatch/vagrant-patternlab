#!/bin/sh

# This is the main script for provisioning.  Out of this
# file, everything that builds the box is executed.

### Software ###
# Git
# NodeJS
# Gulp-CLI
# patternlab
# patternlab starterkit-mustache-demo

### Build the box

# Make /opt directory owned by vagrant user
sudo chown vagrant:vagrant /opt/

### add repository for git
sudo add-apt-repository ppa:git-core/ppa

### Update the system
sudo apt-get update

### Git 
sudo apt-get install -y git

### NodeJS ###
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install global gulp
sudo npm install --global gulp-cli

# Install patternlib
mkdir /opt/
cd /opt/

git clone https://github.com/pattern-lab/edition-node-gulp.git

cd /opt/edition-node-gulp
npm install

npm install starterkit-mustache-demo

gulp patternlab:loadstarterkit --kit=starterkit-mustache-demo
gulp patternlab:serve