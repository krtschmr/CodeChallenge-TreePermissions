# Docflow and his permissions - code challenge 2023
# 
# At Docflow, users can write awesome documents and have them organized in a regular folder tree structure.
# Since our customers might have top secret information that shouldn't be visible by all their users,
# we need to be able to restrict who can see what.
# 
# 
#  Docflows Permission Management
#    - Users shall be organized in groups.
#    - Permissions can be given to any Folder for either a group or a specific User.
#    - If no permissions are given for a Folder, it should use the same Permissions from its parent folder.
#    - Permission levels are NoAccess, Read, Write and FullAccess.
#
#
# Your task
#  - Find a way to implement docflows permission system based on its requirements. 
#  - Feel free to modify the database, add/remove files, throw code around left and right.
#  - Here at Docflow we like people to suceed, thus we're here in this together. 
#  - Use whatever resources you need. ChatGPT doesn't know the solution, we asked already.
# 
# 
# What's the expected outcome?
#  - Fran and his friends, should have read access to all Sports except anything that's related to water.
#  - Fran and his friends, are enthusiastic cyclists, thus they have write permission for anything bike related.
#  - Fran is not allowed, to access Triathlon. He should focus more on cycling.


ABILITIES = [ NoAccess, Read, Write, FullAccess ]



fran = User.find_by(name: "fran")
binding.pry



expect(fran.can_read?("Sports")).to eq(true)
  expect(fran.can_read?("Ballsports")).to eq(true)
    expect(fran.can_read?("Baseball")).to eq(true)
    expect(fran.can_read?("Lacrosse")).to eq(true)
    expect(fran.can_read?("Soccer")).to eq(true)
    expect(fran.can_read?("Tennis")).to eq(true)
  expect(fran.can_read?("Cycling")).to eq(true)
    expect(fran.can_read?("Bmx")).to eq(true)
    expect(fran.can_read?("Road")).to eq(true)
  expect(fran.can_read?("Other")).to eq(true)
    expect(fran.can_read?("Formula 1")).to eq(true)

  expect(fran.can_write?("Cycling")).to eq(true)
    expect(fran.can_write?("Bmx")).to eq(true)
    expect(fran.can_write?("Road")).to eq(true)
  
expect(fran.can_read?("Watersports")).to eq(false)
  expect(fran.can_read?("Diving")).to eq(false)
  expect(fran.can_read?("Waterball")).to eq(false)
  expect(fran.can_read?("Waterpolo")).to eq(false)
expect(fran.can_read?("Triathlon")).to eq(false)

puts "pass"

