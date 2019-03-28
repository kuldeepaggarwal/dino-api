module Dino
  class Cache
    def fetch(*)
      yield if block_given?
    end
  end
end
