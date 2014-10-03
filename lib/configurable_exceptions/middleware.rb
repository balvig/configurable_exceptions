# No way of toggling config.action_dispatch.show_exceptions directly it appears
# so this configurable middleware is instead injected before before the exception
# middleware to be able to dynamically switch them on/of for testing

class ConfigurableExceptions::Middleware
  def initialize(app)
    @app = app
  end

  def call(env)
    env['action_dispatch.show_exceptions'] = ConfigurableExceptions.show_exceptions
    @app.call(env)
  end
end
