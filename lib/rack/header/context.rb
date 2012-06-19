module Rack::Header
  class Context
    def initialize(app, headers = {})
      @app, @headers = app, headers
    end
    
    def call(env)
      status, headers, response = @app.call(env)
      @headers.each do |k,v|
        headers[k] = v
      end
      headers.delete_if { |k,v| v.nil? }
      
      [status, headers, response]
    end
  end
end