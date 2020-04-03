require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../config/environment', __dir__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec-helper'
require 'rspec/rails'

  ActiveRecord::Migration.maintain_test_schema!
  
  Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }  puts e.to_s.strip

  RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end
