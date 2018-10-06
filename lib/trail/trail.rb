module TrailAPI
  module V1
    class Trail

      include HTTParty

      base_uri "https://www.hikingproject.com/data/".freeze
      # API_KEY = "200177455-ae5e3c28baab52f58d5bb05029fa9806"

      def self.find(trails)
        self.class.get 'get-trails-by-id?ids=#{trails}&key=200177455-ae5e3c28baab52f58d5bb05029fa9806'
      end

      def self.find_by_location(lat, long)

      end

      def self.condition(trails)

      end

      def self.todo_list(hp_user_id)
      end
    end
  end
end


#           http_method: :get,
#           endpoint: "get-trails-by-id?ids=#{trails}&key=200177455-ae5e3c28baab52f58d5bb05029fa9806"
