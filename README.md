# Aws::OpsworksCssh

This gem can be used to ssh into all the instances of a given OpsWorks stack (cssh into all instances), by specifying the stack name and the user name.  

## Installation

Add this line to your application's Gemfile:

    gem 'aws-opsworks_cssh'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aws-opsworks_cssh

## Usage

Before starting use, a config and credentials file needs to be setup along with a config which look like this:

    ~/.aws/config

    [default]
    output = json
    region = (Eg. us-east-1)


    ~/.aws/credentials

    [default]
    aws_access_key_id = (20 char key)
    aws_secret_access_key = (40 char secret)



Need to provide a username and stack. It picks up the aws key and aws secret from your ".aws" config file.

Usage:

    $ aws-opsworks_cssh -u "USERNAME" -s "STACKNAME" -p

By default it uses public IP addresses.
If -p is passed along as an option then it would "force_private" and take private IP addresses for the instances.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/aws-opsworks_cssh/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

