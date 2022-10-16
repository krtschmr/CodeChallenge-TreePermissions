class User < ActiveRecord::Base
  [:read, :write, :manage].each{ |sym| define_method("can_#{sym}?") {|name| can?(sym, name)} }
  
  has_many :group_memberships
  has_many :groups, through: :group_memberships
  validates :name, presence: true

  
  

  private

  def can?(what, name)
    return true
    # folder = Folder.find_by(name: name)    
  end
  
end