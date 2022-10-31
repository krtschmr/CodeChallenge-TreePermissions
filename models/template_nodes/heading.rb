class Heading < TemplateNode
  
  def render(annotated: false)
    with_annotation(annotated) do 
      "<h#{heading_level}>#{title}</h#{heading_level}>"
    end
  end
end
