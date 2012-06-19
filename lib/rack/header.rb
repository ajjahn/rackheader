require 'rack'
require 'rack/header/context'
require 'rack/header/version'

module Rack::Header
  def self.new(*args, &block)
    Context.new(*args, &block)
  end
end