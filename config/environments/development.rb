require 'active_support/core_ext/integer/time'

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing
  config.server_timing = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Email settings.
  # config.action_mailer.default_url_options = { host: 'localhost', port: 3005 }
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.perform_caching = false
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.default_options = { from: ENV.fetch('EMAIL_FROM') }

  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.smtp_settings = {
  #   user_name: 'apikey', # Isso deve ser literalmente 'apikey'
  #   password: ENV.fetch('EMAIL_KEY'), # Defina a chave API em uma variável de ambiente
  #   domain: 'http://localhost:3005', # Substitua pelo seu domínio
  #   address: 'smtp.sendgrid.net',
  #   port: 587,
  #   authentication: :plain,
  #   enable_starttls_auto: true
  # }
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default_url_options = { host: 'http://localhost:3005' }

  # etice ok
  # config.action_mailer.smtp_settings = {
  #   address: ENV.fetch('EMAIL_ADDRESS'),
  #   port: ENV.fetch('EMAIL_PORT'),
  #   enable_starttls_auto: ENV['EMAIL_ENABLE_STARTTLS_AUTO'] == 'true',
  #   openssl_verify_mode: ENV.fetch('EMAIL_OPENSSL_VERIFY_MODE')
  # }

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true
  # config.active_job.queue_adapter = :async
  # config.action_mailer.delivery_method = :letter_opener
  # config.action_mailer.perform_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default_url_options = { host: 'localhost', port: 3005 }
end
