class Folder < ActiveRecord::Base
  belongs_to :parent, class_name: 'Folder'
  has_many :children, class_name: 'Folder', foreign_key: 'parent_id'
  has_many :documents
  
  validates :name, presence: true
  
end