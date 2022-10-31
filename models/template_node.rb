class TemplateNode < ActiveRecord::Base
  belongs_to :template
  belongs_to :parent, class_name: 'TemplateNode'
  has_many :children, class_name: 'TemplateNode', foreign_key: 'parent_id'

  before_validation { self.template_id ||= parent&.template_id }

  private 
  
  def with_annotation(annotated)
    raise "no block given" unless block_given?
    
    if annotated
      "<div class='blue-box'>#{yield}</div>"
    else
      yield
    end
  end
end