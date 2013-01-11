require "admin_console/engine"
require 'mongoid'

require 'haml'
require 'formtastic'
require 'pp'

require 'openshift/application_container_proxy'

module AdminConsole
end

Mongoid.load!(File.join(File.dirname(__FILE__),'../../broker/config/mongoid.yml'))
