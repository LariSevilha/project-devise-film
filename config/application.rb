require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BibliotecaDeFilmes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.2

    config.autoload_lib(ignore: %w[assets tasks])
    config.i18n.default_locale = :"pt-BR"
    config.autoload_paths << "#{config.root}/app/filters"
    config.autoload_paths << "#{config.root}/app/services"
  end
end
