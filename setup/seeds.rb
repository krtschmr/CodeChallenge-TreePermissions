Template.create!(name: 'Test for PDF').tap do |template|
  Section.create!(position: 1, template: template).tap do |section|
    Heading.create!(parent: section, position: 1, heading_level: 1, title: 'My Awesome Template', number: '1')
    ContentArea.create!(parent: section, position: 2, kind: 'text', number: '1.1', content: FFaker::HealthcareIpsum.paragraph)
    ContentArea.create!(parent: section, position: 3, kind: 'text', number: '1.2', content: FFaker::HealthcareIpsum.paragraph)
    ContentArea.create!(parent: section, position: 4, kind: 'table', number: '1.3', content: FFaker::HTMLIpsum.table)
    Heading.create!(parent: section, position: 5, heading_level: 1, title: 'More stuff to come!', number: 2)
    ContentArea.create!(parent: section, position: 6, kind: 'text', number: '2.1', content: FFaker::HealthcareIpsum.paragraph)
  end

  Section.create!(position: 2, template: template).tap do |section|
    Heading.create!(parent: section, position: 1, heading_level: 1, title: 'Important stuff', number: '1')
    Heading.create!(parent: section, position: 2, heading_level: 2, title: 'let me explain', number: '1.1')
    ContentArea.create!(parent: section, position: 3, kind: 'text', number: '1.1.1', content: "really cool...")
    Heading.create!(parent: section, position: 4, heading_level: 2, title: 'let me explain more', number: '1.2')
    ContentArea.create!(parent: section, position: 5, kind: 'text', number: '1.2.1', content: "yes. coo stuff")
  end

  Section.create!(position: 3, template: template).tap do |section|
    ContentArea.create!(parent: section, position: 1, kind: 'text', content: FFaker::HealthcareIpsum.paragraph)
    ContentArea.create!(parent: section, position: 2, kind: 'text', content: FFaker::HealthcareIpsum.paragraph)
    Heading.create!(parent: section, position: 3, heading_level: 4, title: 'hello')
    Heading.create!(parent: section, position: 4, heading_level: 3, title: 'how')
    Heading.create!(parent: section, position: 5, heading_level: 2, title: 'are')
    Heading.create!(parent: section, position: 6, heading_level: 1, title: 'you?')
  end
end

# 3.times do |i|
#   Template.create!(name: 'This is another template').tap do |template|
#     Section.create!(position: 1, template: template).tap do |section|
#       ContentArea.create!(parent: section, position: 1, kind: 'text', content: FFaker::HealthcareIpsum.paragraph)
#       ContentArea.create!(parent: section, position: 2, kind: 'text', content: FFaker::HealthcareIpsum.paragraph)
#       ContentArea.create!(parent: section, position: 3, kind: 'text', content: FFaker::HealthcareIpsum.paragraph)
#     end
#   end
# end