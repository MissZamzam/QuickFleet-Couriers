require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Authy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    # config.assets.enabled = true
    config.assets.initialize_on_precompile = false
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    
# Enable the asset pipeline
config.assets.enabled = true

# Serve static files in production
config.serve_static_assets = true

# Compile assets in production
config.assets.compile = true

# Precompile assets in production
config.assets.precompile += %w( application.js application.css )

# Set the cache store in production
config.cache_store = :memory_store

# Enable caching in production
config.action_controller.perform_caching = true

# Enable gzip compression in production
config.middleware.use Rack::Deflater



  end
end
