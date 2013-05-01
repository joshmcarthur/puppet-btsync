# Using this Template

Bootstrap it:

```
mkdir -p ~/src/boxen/puppet-mynewmodule
cd ~/src/boxen/puppet-mynewmodule
git init .
git remote add template https://github.com/boxen/puppet-template.git
git fetch template
git checkout -b master template/master
```

Now we're ready to make it our own!

```
script/cibuild
.bundle/binstubs/rspec-puppet-init
```

Now you'll need to edit `manifests/init.pp` and `spec/classes/template_spec.rb`
for your module.
If your module has other dependencies, be sure to update
`spec/fixtures/Puppetfile`.
From then on, you can use `script/cibuild` to run the tests.

When you're ready to push:

```
git create githubusername/puppet-mynewmodule
git push origin master
```

The rest of the README as follows can be used as a template for your module's README.

# BTSync Puppet Module for Boxen

Installs the BTSync application, a bittorrent-based file syncing tool - similar to Dropbox,
but without the size constraints and fee.


[![Build Status](https://travis-ci.org/joshmcarthur/puppet-btsync.png?branch=master)](https://travis-ci.org/joshmcarthur/puppet-btsync)

## Usage

``` puppet
include btsync
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
