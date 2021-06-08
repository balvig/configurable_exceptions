class ConfigurableExceptions
  class Railtie < Rails::Railtie
    initializer "configurable_exceptions.configure_rails_initialization" do
      Rails.application.middleware.insert_before ActionDispatch::ShowExceptions, ConfigurableExceptions::Middleware
    end
  end
end
