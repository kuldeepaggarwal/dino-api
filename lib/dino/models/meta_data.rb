module Dino
  module Models
    class MetaData < Base
      property :__internal_id, from: '$id'
      property :type
      property :uri
    end
  end
end
