source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: '.ruby-version'

gem 'bcrypt', '~> 3.1.20'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'caxlsx'
gem 'connection_pool'
gem 'dotenv-rails'
gem 'draper'
gem 'hiredis'
gem 'image_processing', '~> 1.13'
gem 'jbuilder', '~> 2.13'
gem 'jquery-rails'
gem 'pg', '~> 1.5'
gem 'puma', '~> 6.4'
gem 'pundit'
gem 'rails', '~> 7.2.1'
gem 'rails_admin', '~> 3.1.4'
gem 'redis', '~> 4.8', require: %w[redis redis/connection/hiredis]
gem 'redis-namespace'
gem 'rubyzip', require: 'zip'
gem 'sassc-rails'
gem 'terser'

group :development, :test do
  gem 'brakeman'
  gem 'capybara'
  gem 'code-scanning-rubocop'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'letter_opener'
  gem 'rspec-its'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-capybara'
  gem 'rubocop-factory_bot'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'selenium-webdriver'
end

group :development do
  gem 'bcrypt_pbkdf'
  gem 'bullet'
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'ed25519'
  gem 'listen', '~> 3.9'
  gem 'rack-mini-profiler', '~> 3.3'
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
