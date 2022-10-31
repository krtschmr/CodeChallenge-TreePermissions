class Section < TemplateNode
  
  def render(annotated: false)
    with_annotation(annotated) do 
      children.map do |child|
        child.render(annotated: annotated)
      end.join
    end
  end
end