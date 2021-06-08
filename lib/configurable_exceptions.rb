require 'configurable_exceptions/version'
require 'configurable_exceptions/middleware'
require 'configurable_exceptions/rails' if defined? Rails::Railtie

class ConfigurableExceptions
  cattr_accessor :show_exceptions
  @@show_exceptions = false
end
