class Template < ActiveRecord::Base
  has_many :template_nodes
  has_many :sections

  def to_pdf(annotated: false)
    sections.map do |section|
      section.render(annotated: annotated)
    end.join('<pagebreak />')
  end
end
