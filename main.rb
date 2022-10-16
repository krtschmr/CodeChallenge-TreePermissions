require 'sqlite3'
require 'ffaker'
require 'active_record'
require 'pry'

require_relative 'setup/db'
require_relative 'models/template'
require_relative 'models/template_node'
require_relative 'models/template_nodes/content_area'
require_relative 'models/template_nodes/heading'
require_relative 'models/template_nodes/section'
require_relative 'setup/seeds'
require_relative 'lib/pdf_renderer'


# Welcome to Docflow!
# 
# We have a Template with some awesome contents inside (headings, paragraphs, tables). 
# Our customers don't just like to view their templates online, they also have the need to export this to a PDF. 
# We use an external library for PDF Printing, which just accepts raw HTML and then returns us a PDF. 
# Our PDF Library is a bit weird and in order to have pretty PDFs, it requires some non standard HTML Tags:
#
# <htmlpageheader></htmlpageheader> # Everything inside there (can be html) will magically be 
#                                   # added to each page as a header. Needs to be included in the HTML just once.
# <htmlpagefooter></htmlpagefooter> # Everything inside there (can be html) will magically be 
#                                   # added to each page as a footer. Needs to be included in the HTML just once.
# <pagebreak />                     # It forces to create a new page in our PDF
# ${page_num}                       # Wherever this is, the current PDF page number will be written
#
# Our customers expect from our PDF to have a Header which contains the Template name, a footer which contains 
# the current page number. Also, each Section must begin on a new page. However, they would like to also have an option to toggle the Header and Footer on/off.
#
# A Template contais TemplateNodes, please look at models/template_nodes and setup/seeds. 
# Since we are software engineers, we like to write maintainable, testable high quality code. That's why need you!
# In the past, we used regular rails views to construct the HTML, but it is already 2022. We would like to move all this logic into a well designed
# pure ruby component, which accepts a Template and returns us the constructed HTML.
# We keep testing in mind and believe that an efficient way to test each "component" of a template shall be done individually. 
#
# One special requirement is the "annotated" mode. When this mode is enabled, each element of the template should 
# have a blue border, so that people can see exactly how much space an element takes (imagine there are 2 paragraphs next 
# to each other, which would be just rendererd as a big text. With the annotated mode, you would see each paragraph in his own blue box.)
# 
# It is your task to find a modern and flexible way to cover as many requirements as possible. Since we are looking for a teamplayer, you can always communicate with us.

# Possible test scenarios (just dummy code for inspiration)

# it "renders a full html" do 
#   template = create(:template, :with_headings, :with_paragraphs, :with_tables)
#   html = template.to_pdf
#   expect(html).to somewhat_include("the headings we need")
#   expect(html).to somewhat_include("the paragraphs in the cool format")
#   expect(html).to somewhat_include("the tables which are aligned correctly")
#   expect(html).to have 4.pages  
# end
#
# describe "rendering headings" do 
#   it "renders a beautiful headline which is a H1" do 
#     heading = create(:heading, heading_level: 1, text: "I am a headline")
#     html = heading.render
#     expect(html).to be_a_beautiful_h1
#   end
#
#   it "renders a beautiful headline which is a H2" do 
#     heading = create(:heading, heading_level: 2, text: "I am a smaller headline")
#     html = heading.render
#     expect(html).to be_a_nice_h2
#   end
# end
#
# describe "rendering a section" do 
#   section = create(:section) do 
#     paragraph1 = create(:paragraph)
#     paragraph2 = create(:paragraph)
#   end
#   section_html = section.render(annotated: true)
#   expect(section_html).to have_2_blue_boxes
#
#   paragraph1_html = paragraph1.render(annotated: true)
#   expect(paragraph1_html).to be_inside_a_blue_border
#   expect(paragraph1_html).to have_the_correct_content
# end


template = Template.first
puts template.to_pdf


