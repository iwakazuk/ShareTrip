source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'mysql2', '>= 0.4.4', '< 8.0.19'
gem 'puma', '~> 4.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'devise'
gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'carrierwave'
gem 'kaminari'
gem 'rails-i18n' 
gem 'ransack'
gem 'mini_magick'
gem 'acts-as-taggable-on'
gem 'pry-byebug'
gem 'pry-rails'
gem 'dotenv-rails'
gem 'faker', :git => 'https://github.com/stympy/faker.git', :branch => 'master'
gem 'fog-aws'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'bcrypt_pbkdf'
  gem 'capistrano', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv', require: false
  gem 'capistrano3-puma', require: false
  # gem 'capistrano-rails-console'
  gem 'ed25519'
  # gem 'factory_bot_rails'
  # gem 'rspec-rails'
  # gem 'rubocop', require: false
  # gem 'rubocop-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  #gem 'rack-mini-profiler', require: false
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  #gem 'rspec_junit_formatter'
end

group :production do
  gem 'fog', '1.42'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
