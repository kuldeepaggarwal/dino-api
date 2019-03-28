module Dino
  module Clients
    base_path = "#{__dir__}/clients"
    autoload :Http, "#{base_path}/http"
    autoload :Cache, "#{base_path}/cache"
  end
end
