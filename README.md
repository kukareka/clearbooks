# Clearbooks
Version 0.4.0-3-g38400cd

[![Gem Version](https://badge.fury.io/rb/clearbooks.svg)](http://badge.fury.io/rb/clearbooks)
[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://img.shields.io/badge/license-MIT-brightgreen.svg)

This is an unofficial Clear Books [1] API gem to handle any kind of interaction of their SOAP
Service [2] via a native Ruby interface. Clear Books is an online accounting software usable as a
Software as a Service (SaaS). Their official API works via SOAP and WSDL and currently is only officially supported
via PHP [3].

It allows the handling of invoices, expenses, financial accounts and mobile accounting as well as online HR and payroll.

[1] Clear Books PLC, https://www.clearbooks.co.uk
[2] https://www.clearbooks.co.uk/support/api
[3] https://www.clearbooks.co.uk/support/api/code-examples/php/
[4] https://github.com/clearbooks

## Features

- Application
  - Ruby VM (2.2 or better)
- Feature Providing Base Libraries
  - Savon
  - Thor
- Development
- Development Base Libraries
  - RVM
  - Rake
  - Thor
- Code Quality
  - Code review
  - Yard & related  (gem install yard --no-ri --no-rdoc ; gem install rdiscount --no-ri --no-rdoc)
  - MetricFu/RSpec/Cucumber/DBC/Vagrant/Docker/i18n


## Installing

By running gem comand

```
gem install clearbooks
```

or by adding to `Gemfile`

```ruby
gem 'clearbooks', git: 'https://github.com/greylon/clearbooks.git'
```

## Usage

As library


```ruby
2.2.2 :001 > require 'clearbooks'
 => true
2.2.2 :002 > clearbooks = Clearbooks.new
```

or from the command line

```sh
~# clearbooks --help

Commands:
  clearbooks
```

## On what Hardware does it run?

This Software was originally developed and tested on 32-bit x86 / SMP based PCs running on
Ubuntu and Gentoo GNU/Linux 3.13.x. Other direct Linux and Unix derivates should be viable too as
long as all dynamical linking dependencys are met.


## Documentation

A general developers API guide can be extracted from the Yardoc subdirectory which is able to
generate HTML as well as PDF docs. Please refer to the [Rake|Make]file for additional information
how to generate this documentation.


## Software Requirements

This package was developed and compiled under Gentoo GNU/Linux 3.x with the Ruby 2.x.x.
interpreter. It uses several libraries and apps as outlied in the INSTALLING section.

 - e.g. Debian/GNU Linux or Cygwin for MS Windows
 - Ruby
 - RVM or Rbenv
 - Bundler

## Configuration

Configuration is handled at run-time via $HOME/.clearbooks/config.yaml file.

## Build & Packaging

Package building such as RPM or DEB has not been integrated at this time.

```sh
~# rake build
~# rake package
~# rake install
```

## Development

#### Software requirements

This package was developed and compiled under Gentoo GNU/Linux 3.x with the Ruby 2.x.x.
interpreter.

#### Setup

If you got this package as a packed tar.gz or tar.bz2 please unpack the contents in an appropriate
folder e.g. ~/clearbooks/ and follow the supplied INSTALL or README documentation. Please delete or
replace existing versions before unpacking/installing new ones.

Get a copy of current source from SCM

```sh
~# git clone ssh://github.com/greylon/clearbooks.git clearbooks
```

Install RVM (may not apply)

```sh
~# curl -sSL https://get.rvm.io | bash -s stable
```

Make sure to follow install instructions and also integrate it also into your shell. e.g. for ZSH,
add this line to your .zshrc.

```sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" ;

or

~# echo "source /usr/local/rvm/scripts/rvm" >> ~/.zshrc

```

or see http://rvm.io for more details.


Create proper RVM gemset

```sh
~# rvm --create use 2.2.2@clearbooks_project
```

Install Ruby VM 2.2.2 or better

```sh
~# rvm install 2.2.2
```

Install libraries via bundler

```sh
~# gem install bundler
~# bundle
```

#### Rake Tasks

For a full list of Rake tasks suported, use `rake -T`.

Here is a current listing of all tasks:


```
rake build                             # Build clearbooks-0.4.0.gem into the pkg directory
rake cucumber:pretty                   # Run Cucumber features
rake cucumber:progress                 # Run Cucumber features
rake db:auto:migrate                   # Perform auto-migration (reset your db data)
rake db:auto:upgrade                   # Perform non destructive auto-migration
rake db:create[repository]             # Create the database
rake db:drop[repository]               # Drop the database
rake db:migrate[version]               # Run all pending migrations, or up to specified migration
rake db:migrations                     # List migrations descending, showing which have been applied
rake db:new_migration[migration_name]  # Generate new migration file in src/models/migrations
rake db:reset                          # Drop the database, migrate from scratch and initialize with the seed data
rake db:rollback[version]              # Rollback down to specified migration, or rollback last STEP=x migrations (default 1)
rake db:seed:production                # Seed Production
rake db:setup                          # Create the database, migrate and initialize with the seed data
rake default                           # Show the default task when executing rake without arguments
rake docs:generate                     # Generate Yardoc documentation for this project
rake docs:graph                        # Generate Yard Graphs for this project
rake guard:default                     # Execute Ruby Guard
rake help                              # Shows the usage help screen
rake install                           # Build and install clearbooks-0.4.0.gem into system gems
rake install:local                     # Build and install clearbooks-0.4.0.gem into system gems without network access
rake man:build                         # Build the manual pages
rake man:clean                         # Clean up from the built man pages
rake measurement:benchmark             # When executing rake tasks measure elapsed time, used with other tasks
rake measurement:profiling             # Run profiling over stack
rake metric:metric                     # Run metric fu for project
rake package:clean                     # Clean all files from pkg folder
rake readme                            # Generate proper README file from templates
rake readme:all                        # Generate proper README file from templates
rake readme:subdirs                    # Builds generates readme files in all sub-directories
rake readme:topdir                     # Generate top level README file from template
rake release                           # Create tag v0.4.0 and build and push clearbooks-0.4.0.gem to Rubygems
rake spec                              # RSpec Core Tasks
rake todo                              # Look for TODO and FIXME tags in the code
rake version                           # Git Tag number of this repo

```

#### Thor Tasks

For a full list of Thor tasks suported, use `thor -T`.

Here is a current listing of all tasks:


```
default
-------
thor :build                           # build
thor :clean                           # clean
thor :db:auto:migrate                 # Perform auto-migration (reset your db data)
thor :db:auto:upgrade                 # Perform non destructive auto-migration
thor :db:createREPOSITORY             # Create the database
thor :db:dropREPOSITORY               # Drop the database
thor :db:load_migrations              # load_migrations
thor :db:migrateVERSION               # Run all pending migrations, or up to specified migration
thor :db:migrations                   # List migrations descending, showing which have been applied
thor :db:new_migrationMIGRATION_NAME  # Generate new migration file in src/models/migrations
thor :db:reset                        # Drop the database, migrate from scratch and initialize with the seed data
thor :db:rollbackVERSION              # Rollback down to specified migration, or rollback last STEP=x migrations (default 1)
thor :db:seed:production              # Seed Production
thor :db:setup                        # Create the database, migrate and initialize with the seed data
thor :default                         # Show the default task when executing rake without arguments
thor :docs:generate                   # Generate Yardoc documentation for this project
thor :docs:graph                      # Generate Yard Graphs for this project
thor :environment                     # environment
thor :guard:default                   # Execute Ruby Guard
thor :help                            # Shows the usage help screen
thor :install                         # Build and install clearbooks-0.4.0.gem into system gems
thor :man:build                       # Build the manual pages
thor :man:clean                       # Clean up from the built man pages
thor :measurement:benchmark           # When executing rake tasks measure elapsed time, used with other tasks
thor :measurement:profiling           # Run profiling over stack
thor :metric:metric                   # Run metric fu for project
thor :package:clean                   # Clean all files from pkg folder
thor :readme:all                      # Generate proper README file from templates
thor :readme:subdirs                  # Builds generates readme files in all sub-directories
thor :readme:topdir                   # Generate top level README file from template
thor :release                         # release
thor :spec                            # Run RSpec code examples
thor :todo                            # Look for TODO and FIXME tags in the code
thor :version                         # Git Tag number of this repo

config
------
thor config:clean     # Removes clearbooks config file
thor config:generate  # Generate clearbooks config file

info
----
thor info:overview  # Shows system overview

version
-------
thor version:show  # Show version of this app


```

## If something goes wrong

In case you enconter bugs which seem to be related to the package please check in
the MAINTAINERS.md file for the associated person in charge and contact him or her directly. If
there is no valid address then try to mail Bjoern Rennhak <bjoern AT greylon DOT com> to get
some basic assistance in finding the right person in charge of this section of the project.

## Contributing

1. Fork it ( https://github.com/greylon/clearbooks/fork )
2. Create your feature branch (`git checkout -b my_new_feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my_new_feature`)
5. Create a new Pull Request

## Authors

* [Oleg Kukareka](https://github.com/kukareka)
* [Bjoern Rennhak](https://github.com/rennhak)

## Copyright & License

Please refer to the COPYING.md and LICENSE.md file.
Unless otherwise stated in those files all remains protected and copyrighted by Bjoern Rennhak
(bjoern AT greylon DOT com).