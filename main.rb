require 'sqlite3'
require 'ffaker'
require 'active_record'
require 'pry'

require_relative 'setup/db'
require_relative 'models/user'
require_relative 'models/folder'
require_relative 'models/document'
require_relative 'setup/seeds'

binding.pry
