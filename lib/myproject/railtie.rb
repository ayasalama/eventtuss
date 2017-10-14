require 'myproject'
require 'rails'

module Myproject
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'tasks/dependecies.rake'
    end
  end
end


# lib/my_gem/railtie.rb
#module MyGem
  #class Railtie < Rails::Railtie
 # end
#end

# lib/my_gem.rb
#require 'my_gem/railtie' if defined?(Rails)
