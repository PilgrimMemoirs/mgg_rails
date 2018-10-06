require "httparty"

Dir[File.dirname(__FILE__) + '/trail/*.rb'].each do |file|
  require file
end

# require 'oj'
# require 'faraday'
#
# module HikingProjectAPI
#   module V1
#     class Client
#       API_ENDPOINT =  "https://www.hikingproject.com/data/".freeze
#       API_KEY = "200177455-ae5e3c28baab52f58d5bb05029fa9806"
#
#
#       def self.find_trails_by_id(trails)
#         request(
#           http_method: :get,
#           endpoint: "get-trails-by-id?ids=#{trails}&key=200177455-ae5e3c28baab52f58d5bb05029fa9806"
#         )
#       end
#
#       def self.find_trails_by_location(lat, long)
#       end
#
#       def self.get_condition_of_trails(trails)
#       end
#
#       def self.get_user_trail_list(user_hiking_project_id)
#       end
#
#
#     end
#   end
# end
