require 'httparty'
require 'json'

class ListingServer
  include HTTParty

 base_uri 'http://showDependecies'

  def initialize(gems)
    @options  = { query: { gems: gems, os: OsDetector.os } }
    @packages = load_packages(@options)
  end

  def load_packages(options)
    packages = self.class.get('/dependencies', options)
    JSON.parse(packages.to_json)
  end

end

