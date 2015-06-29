require "aws-sdk"
require "aws/opsworks_cssh/version"

module Aws
  module OpsworksCssh
    
    

    def self.start_opsworks_cssh(stack_name,user)

    	@resp_instances
      options = {}
      options['user'] = user


      opsworks = Aws::OpsWorks::Client.new(region: 'us-east-1')
      # sample stack_id = 'c06853f8-428e-44f7-8f6e-326703bf501e'
      #sample stack name = 'Redcoon'
      resp_stacks = opsworks.describe_stacks
      #resp = opsworks.describe_instances({:stack_id => stack_id})
      resp_stacks.stacks.each do |stack|
        if stack.name == stack_name
          @resp_instances = opsworks.describe_instances({:stack_id => stack.stack_id})
          break
        end
      end


      dns = @resp_instances.instances.map { |instance| instance.public_ip.nil? ? instance.private_ip : instance.public_ip }

      cssh = (/darwin/ =~ RUBY_PLATFORM) ? 'csshX' : 'cssh'

      cmd = "#{cssh} -l #{options['user']} #{dns.join ' '}"
      puts "Connecting to #{dns.length} instances"
      puts cmd
      exec cmd
    end

  end
end