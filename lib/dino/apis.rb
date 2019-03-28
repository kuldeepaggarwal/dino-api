module Dino
  module Apis
    base_path = "#{__dir__}/apis"
    autoload :Base, "#{base_path}/base"
    autoload :Item, "#{base_path}/item"
    autoload :News, "#{base_path}/news"
  end
end
