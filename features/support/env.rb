require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/poltergeist'
require 'capybara/webkit'

#BASE_URL = 'http://www.teknosa.com/'
Capybara.app_host = 'http://www.teknosa.com'

Dir[File.dirname(__FILE__) + '/../../page_objects/*.rb'].each { |file|
  require file
}

ENV['HEADLESS'] = 'true'

if ENV['HEADLESS'] == 'true'

  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
        app,
        window_size: [1280, 1024],
        debug: false,
        timeout: 5000
    )
  end
  Capybara.default_driver = :poltergeist
  Capybara.javascript_driver = :poltergeist

else

  Capybara.configure do |config|
    config.default_driver = :firefox
    config.javascript_driver = :firefox
    config.run_server = false
    config.default_selector = :css
    config.default_wait_time = 5


    #capybara 2.1 config options
    config.match = :prefer_exact
    config.ignore_hidden_elements = false
  end

  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

end
