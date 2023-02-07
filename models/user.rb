class User < ActiveRecord::Base
  validates :name, presence: true


  def can_read?(object)
  end

  def can_write?(object)
  end

  def can_manage?(object)
  end
  
end