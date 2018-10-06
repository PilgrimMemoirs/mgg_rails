require 'faraday'
require 'json'

module HikingProject
  module V1
    class Trail
      def self.find(trails)
        response = Faraday.get 'https://www.hikingproject.com/data/get-trails?lat=40.0274&lon=-105.2519&maxDistance=10&key=200177455-ae5e3c28baab52f58d5bb05029fa9806'
      end

      def self.find_by_location(lat, long)
        max_distance = "&maxDistance=#{distance ||= 100}"
        response = Faraday.get "https://www.hikingproject.com/data/get-trails?lat=#{lat}&lon=#{long}#{max_distance}&key=200177455-ae5e3c28baab52f58d5bb05029fa9806"

        return JSON.parse(response.body)["trails"] if response.status == 200

        [JSON.parse(response.body), response.status]

      end
    end
  end
end


# HikingProject::V1::Trail.find_by_location(40.0274, -105.2519)
