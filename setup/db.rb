# Connect to an in-memory sqlite3 database
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define do
  create_table :users, force: true do |t|
    t.string :name, null: false
  end

  create_table :folders, force: true do |t|
    t.string :name, null: false
    t.integer :parent_id, null: true    
  end

  create_table :documents, force: true do |t|
    t.string :name, null: false
    t.integer :folder_id, null: false
  end
  
end
