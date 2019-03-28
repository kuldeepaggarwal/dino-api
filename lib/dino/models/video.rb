module Dino
  module Models
    class Video < Base
      property :__internal_id, from: '$id'
      property :descricao, from: :Descricao
      property :url, from: :Url
    end
  end
end
