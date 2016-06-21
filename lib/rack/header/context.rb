module Rack::Header
  class Context
    def initialize(app, headers = {})
      @app = app

      # Map HTTP_* environment variables to response headers
      @headers = Hash[*ENV.select {|k,v| k.start_with? 'HTTP_'}
                          .collect {|k,v| [k.sub(/\AHTTP_/, ''), v]}
                          .collect {|k,v| [k.split('_').collect(&:capitalize).join('-'), v]}
                          .flatten]

      @headers = headers.merge(@headers)
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
