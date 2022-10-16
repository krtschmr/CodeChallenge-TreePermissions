class Template < ActiveRecord::Base
  has_many :template_nodes
  has_many :sections

  def to_pdf
    # magic
  end
  
end
