require 'bundler'
namespace :myproject 
do
    packages     = ListingServer.dependencies
    puts 'These are the required gems'
    puts packages
   end
end
