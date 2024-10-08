require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PhlexuiPlayground
  class Application < Rails::Application
    config.autoload_paths << "#{root}/app/views"
    config.autoload_paths << "#{root}/app/views/layouts"
    config.autoload_paths << "#{root}/app/views/components"

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    # Please, add to the `ignore` list any other `lib` subdirectories that do
    # not contain `.rb` files, or that should not be reloaded or eager loaded.
    # Common ones are `templates`, `generators`, or `middleware`, for example.
    config.autoload_lib(ignore: %w[assets tasks])

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    Rails.autoloaders.main.inflector.inflect("rbui" => "RBUI")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/accordion")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/button")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/combobox")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/form")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/tooltip")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/select")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/theme_toggle")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/input")
    Rails.autoloaders.main.collapse("#{Rails.root}/app/views/components/rbui/checkbox")
  end
end
