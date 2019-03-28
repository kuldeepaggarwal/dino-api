module Dino
  module Models
    class ItemCategory < Base
      property :__internal_id, from: '$id'
      property :name, from: :Name
      property :slug, from: :Slug
      property :metadata, from: :__metadata, with: get_parsing_proc_for(MetaData)
    end
  end
end
