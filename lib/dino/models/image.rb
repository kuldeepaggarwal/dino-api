module Dino
  module Models
    class Image < Base
      property :__internal_id, from: '$id'
      property :alt, from: :Alt
      property :description, from: :Description
      property :id, from: :Id
      property :mime_type, from: :MimeType
      property :source, from: :Source
      property :url, from: :Url
    end
  end
end
