module Dino
  module Clients
    class Cache < Http
      def initialize(expires_in: Dino.default_expiration)
        @expires_in = expires_in
        super()
      end

      def fetch_data(url, options)
        Dino.cache.fetch([url, options], expires_in: @expires_in) do
          super
        end
      end
    end
  end
end
