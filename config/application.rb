require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
require "google/cloud/vision"


module HackathonNasa
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    Google::Cloud::Vision.configure do |config|
      config.project_id  = "hackathon-nasa"
      config.credentials = "./key-gcloud-vision.json"
    end

    vision = Google::Cloud::Vision.new

  end
end
