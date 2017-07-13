require 'cucumber'
require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'site_prism'
require 'faker'
require 'pry'
require 'cpf_faker'

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")

## Escolhe browser
Capybara.register_driver :selenium do |app|

  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {'args' => [ "--start-maximized"],
      prefs: { 'credentials_enable_service': false,
        'profile': {'password_manager_enabled': false}}
        })
        )

      elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
      elsif BROWSER.eql?('internet_explorer')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
      end
    end

    ## Cucumber Definitions
    Before do
      Capybara.configure do |config|
        config.default_driver = :selenium
        config.app_host = CONFIG['url']
      end
      Capybara.default_max_wait_time = 30
      Capybara.javascript_driver = :selenium
    end

    After do
      ## Matar a instancia do driver
      unless BROWSER.eql?('chrome')
        Capybara.current_session.driver.close
        #Capybara.current_session.driver.quit
      end
    end
