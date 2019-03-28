module Dino
  module Clients
    class Http
      require 'httparty'

      InvalidResponse = Class.new(StandardError)

      def fetch_data(url, options)
        response = ::HTTParty.get(url)
        if response.ok?
          response.parsed_response
        else
          raise InvalidResponse, response.parsed_response
        end
      end
    end
  end
end
