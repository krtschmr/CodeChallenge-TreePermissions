# Connect to an in-memory sqlite3 database
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define do
  create_table :templates, force: true do |t|
    t.string :name, null: false
  end

  create_table :template_nodes, force: true do |t|
    t.integer :template_id, null: false
    t.integer :parent_id, null: true
    t.integer :position, default: -1
    t.string :type, null: false
    t.string :kind, null: true
    t.string :title, null: true
    t.text :content, null: true
    t.integer :heading_level, null: true
    t.string :number, null: true
  end
end
