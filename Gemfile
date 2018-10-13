# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Backend
gem 'pg', '~> 1.1', '>= 1.1.3'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.1'

# Frontend
gem 'bootstrap', '~> 4.1', '>= 4.1.3'
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'sass-rails', '~> 5.0'

# Epics
gem 'bootsnap', '>= 1.1.0', require: false
gem 'turbolinks', '~> 5'
gem 'fae-rails', '~> 2.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # rubocop
  gem 'rubocop', '~> 0.59.2', require: false
end

group :test do
  gem 'faker', git: 'https://github.com/stympy/faker.git', branch: 'master'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # RSpec
  gem 'rspec-rails', '~> 3.7'
  gem 'rspec_junit_formatter'
  gem 'shoulda-matchers', '~> 3.1'

  # SimpleCov
  gem 'simplecov', require: false

  # Capybara
  gem 'capybara'
  gem 'capybara-selenium'
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
