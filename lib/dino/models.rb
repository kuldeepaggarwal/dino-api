module Dino
  module Models
    base_path = "#{__dir__}/models"
    autoload :Base, "#{base_path}/base"
    autoload :Image, "#{base_path}/image"
    autoload :Item, "#{base_path}/item"
    autoload :MetaData, "#{base_path}/meta_data"
    autoload :Video, "#{base_path}/video"
    autoload :ItemCategory, "#{base_path}/item_category"
  end
end
