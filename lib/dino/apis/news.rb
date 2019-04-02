module Dino
  module Apis
    class News < Base
      def self.all(**args)
        new(**args)
      end

      def map
        return to_enum(__method__) unless block_given?

        response['Items'].map do |item|
          yield(Models::Item.new(item))
        end
      end

      def total_count
        response['Total']
      end

      private

        def response
          @response ||= fetch_data(options[:path] || 'news')
        end
    end
  end
end
