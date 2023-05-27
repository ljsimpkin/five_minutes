require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FiveMinutes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
   
   # config.web_console.permissions = '192.168.68.51'
   config.hosts << "simpkin.tplinkdns.com"
   config.hosts << "192.168.68.51"
   config.hosts << "47.72.169.247"
   config.secret_key_base = "65ed70d056a20ef8797188de1fcdfc1021204b86ac9538d8fa5a0d6d14a7d6d9ba15e6d9236359c4a470add9d1ce1fb02a7b3d8020e407d7bebb444f4e63de51"

    config.relative_url_root = "#{ENV['FIVE_PATH_PREFIX']}"
  end
end
