gem 'activerecord', '~> 7.1.3.2'
gem 'sqlite3', '~> 1.7.3'
# ^ fix the version of these two gems to avoid potential issues

require 'active_record'
require 'sqlite3'
require 'yaml'

# This is some boilerplate code to read the config/database.yml file
# And connect to the database
config_path = File.join(File.dirname(__FILE__), "database.yml")
ActiveRecord::Base.configurations = YAML.load_file(config_path)
ActiveRecord::Base.establish_connection(:development)

# Set a logger so that you can view the SQL actually performed by Active Record
logger = Logger.new($stdout)
logger.formatter = proc do |_severity, _datetime, _progname, msg|
  "#{msg}\n"
end
ActiveRecord::Base.logger = logger

# Load models
Dir["#{__dir__}/../app/models/*.rb"].each { |file| require file }


# Discard warning message for i18n errors
I18n.enforce_available_locales = false
