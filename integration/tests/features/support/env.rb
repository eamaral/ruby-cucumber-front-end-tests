require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
require 'capybara'
require 'capybara/rspec'


BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")


Capybara.register_driver :selenium do |app|
    
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    elsif BROWSER.eql?('ie')
        Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
    elsif BROWSER.eql?('safari')
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
end

World(Helper)
World(Pages)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
end