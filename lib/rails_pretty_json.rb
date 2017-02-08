require 'rails_pretty_json/version'
require 'rails'
require 'rails_pretty_json/railtie'

module RailsPrettyJson
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, response = @app.call(env)
      if headers['Content-Type'] =~ %r{^application\/json}
        obj = JSON.parse(response.body)
        pretty_str = JSON.pretty_generate(obj)
        response = [pretty_str]
        headers['Content-Length'] = pretty_str.bytesize.to_s
      end
      [status, headers, response]
    end
  end
end
