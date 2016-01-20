source 'https://rubygems.org'

# Stack
gem 'rails', '4.2.2'
gem 'pg'
gem 'puma'
gem 'foreman'

# View
gem 'slim-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass', '~> 3.3.5'

# Misc
gem 'exception_notification'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test do
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', require: false, github: 'thoughtbot/shoulda-matchers'
  gem 'capybara'
end

group :development, :test do
  gem 'rspec-rails'

  gem 'guard'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard', require: false # Shows test alerts in OS X 10.8 Notification Center

  gem 'letter_opener'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
end

group :development, :test, :staging do
  gem 'faker'
end

# Logging
group :production, :staging do
  gem 'rails_12factor'
end
