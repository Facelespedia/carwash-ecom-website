# frozen_string_literal: true

require 'capybara/rspec'
require 'capybara-screenshot/rspec'

Capybara.register_driver :headless_chrome do |app|
  Capybara::RackTest::Driver.new(app, browser: :chrome)
  Capybara.ignore_hidden_elements = true
end

Capybara::Screenshot.register_driver(:headless_chrome) do |driver, path|
  driver.browser.save_screenshot(path)
end
