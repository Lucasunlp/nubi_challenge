ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'representers/alumn_representer'
reporter_options = { color: true }

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  # include FactoryBot::Syntax::Methods
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
