# Create users and groups
Group.create!(name: "Owners").tap do |owners|
  owners.users << User.create!(name: "alex")
  owners.users << User.create!(name: "bibi")
end
Group.create!(name: "Friends").tap do |members|
  members.users << User.create!(name: "coco")
  members.users << User.create!(name: "fran")
end

# Create folders
Folder.create!(name: "Sports").tap do |sports|
  Folder.create!(name: "Ballsports", parent: sports).tap do |ballsports|
    Folder.create!(name: "Baseball", parent: ballsports)
    Folder.create!(name: "Lacrosse", parent: ballsports)
    Folder.create!(name: "Soccer", parent: ballsports)
    Folder.create!(name: "Tennis", parent: ballsports)
  end
  Folder.create!(name: "Cycling", parent: sports).tap do |ballsports|
    Folder.create!(name: "BMX", parent: ballsports)
    Folder.create!(name: "Road", parent: ballsports)    
  end  
  Folder.create!(name: "Watersports", parent: sports).tap do |ballsports|
    Folder.create!(name: "Diving", parent: ballsports)
    Folder.create!(name: "Waterball", parent: ballsports)
    Folder.create!(name: "Waterpolo", parent: ballsports)
  end
  Folder.create!(name: "Other", parent: sports).tap do |other|
    Folder.create!(name: "Formula 1", parent: other)
    Folder.create!(name: "Triathlon", parent: other)
  end  
end




# Document.create!(folder: Folder.find_by(name: "Watersports"), name: "The Watersport fible")
# Document.create!(folder: Folder.find_by(name: "Soccer"), name: "Ronaldos")
# Document.create!(folder: Folder.find_by(name: "Tennis"), name: "Wimbledon winners")
# Document.create!(folder: Folder.find_by(name: "Other"), name: "All the sports that aren't olympics")
# Document.create!(folder: Folder.find_by(name: "Triathlon"), name: "The greats of Triathlon")