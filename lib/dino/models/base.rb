module Dino
  module Models
    require 'hashie'
    class Base < ::Hashie::Trash
      def self.get_parsing_proc_for(klass)
        ->(values) do
          if values.respond_to?(:to_ary)
            values.collect { |value| klass.new(value) }
          else
            klass.new(values)
          end
        end
      end
    end
  end
end
