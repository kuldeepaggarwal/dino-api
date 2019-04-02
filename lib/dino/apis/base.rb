module Dino
  module Apis
    class Base
      BASE_URL = ENV['DINO_API_BASE_URL'] || 'https://api.dino.com.br/v2/'

      attr_reader :client, :options
      def initialize(client: Dino::Clients::Cache.new, options: {})
        @client = client
        @options = options
      end

      def fetch_data(path)
        client.fetch_data(BASE_URL + path, options)
      end
    end
  end
end
