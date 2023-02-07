# Create users and groups
alex = User.create!(name: "alex")
bibi = User.create!(name: "bibi")
coco = User.create!(name: "coco")
daya = User.create!(name: "daya")
esta = User.create!(name: "esta")
fran = User.create!(name: "fran")

# UserGroup.create!(name: "Owners").tap do |owners|
#   owners.users << alex
#   owners.users << bibi
# end
# UserGroup.create!(name: "Members").tap do |members|
#   members.users << coco
#   members.users << daya
#   members.users << esta
# end
# UserGroup.create!(name: "VIPs").tap do |vips|
#   vips.users << fran
# end

# Create folders
Folder.create!(name: "Sports").tap do |sports|
  Folder.create!(name: "Ballsports", parent: sports).tap do |ballsports|
    Folder.create!(name: "Badminton", parent: ballsports)
    Folder.create!(name: "Lacrosse", parent: ballsports)
    Folder.create!(name: "Soccer", parent: ballsports)
    Folder.create!(name: "Tennis", parent: ballsports)
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

Document.create!(folder: Folder.find_by(name: "Watersports"), name: "The Watersport fible")
Document.create!(folder: Folder.find_by(name: "Soccer"), name: "Ronaldos")
Document.create!(folder: Folder.find_by(name: "Tennis"), name: "Wimbledon winners")
Document.create!(folder: Folder.find_by(name: "Other"), name: "All the sports that aren't olympics")
Document.create!(folder: Folder.find_by(name: "Triathlon"), name: "The greats of Triathlon")