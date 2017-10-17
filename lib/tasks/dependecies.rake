require 'bundler'
namespace :myproject 
do
 desc 'Show all required dependencies'
task show: :environment do
    gems         = Bundler.load.specs.map(&:name)

    packages     = ListingServer.new(gems).dependencies

    puts 'These are the required gems'

    puts packages.join(', ')

   end
end
