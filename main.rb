require 'sqlite3'
require 'ffaker'
require 'active_record'
require 'pry'

require_relative 'setup/db'
require_relative 'models/template'
require_relative 'models/template_node'
require_relative 'models/template_nodes/content_area'
require_relative 'models/template_nodes/heading'
require_relative 'models/template_nodes/section'
require_relative 'setup/seeds'
require_relative 'lib/pdf_renderer'

template = Template.first
puts template.to_pdf
binding.pry
