module Dino
  module Apis
    class Item < Base
      def self.find(**args)
        new(**args).load
      end

      attr_reader :id
      def initialize(id:, **args)
        @id = id
        super(**args)
      end

      def load
        Models::Item.new(fetch_data(options[:path] || "news/#{id}")['Item'])
      end
    end
  end
end
