module RailsPrettyJson
  class Railtie <  Rails::Railtie
    initializer 'rails_pretty_json.configure_rails_initialization' do |app|
      app.middleware.use RailsPrettyJson::Middleware
    end
  end
end
