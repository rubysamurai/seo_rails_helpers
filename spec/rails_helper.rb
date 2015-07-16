ENV['RAILS_ENV'] = 'test'

require 'spec_helper'
require 'action_controller/railtie'
require 'seo_rails_helpers'
require 'rspec/rails'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
