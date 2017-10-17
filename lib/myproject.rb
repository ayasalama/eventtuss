require "myproject/version"
require "myproject/os_detector"
require "myproject/listing_server"

module Myproject
  require "myproject/railtie.rb" if defined?(Rails)
end

