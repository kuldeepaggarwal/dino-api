require 'dino/version'

module Dino
  class Error < StandardError; end

  base_path = "#{__dir__}/dino"
  autoload :Cache, "#{base_path}/cache"
  autoload :Apis, "#{base_path}/apis"
  autoload :Clients, "#{base_path}/clients"
  autoload :Models, "#{base_path}/models"

  def self.default_expiration
    # return in seconds
    (@default_expiration || 10) * 60
  end

  def self.default_expiration=(minutes)
    @default_expiration = minutes.to_i
  end

  def self.cache
    @cache ||= defined?(Rails) ? Rails.cache : Cache.new
  end
end
