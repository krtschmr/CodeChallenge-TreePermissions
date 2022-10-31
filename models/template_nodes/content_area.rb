class ContentArea < TemplateNode
  KINDS = %w[
    text
    option
    table
  ].freeze

  def render(annotated: false)
    html = content    
    html = "<p>#{content}</p>" if kind == 'text'
    
    with_annotation(annotated) do 
      html
    end
  end
end
