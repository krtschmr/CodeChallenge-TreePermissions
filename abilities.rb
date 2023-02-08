
class Ability
end

class FullAccess < Ability
  ABILITIES = {
    manage: true,
    write: true,
    read: true,    
  }
end
class Write < Ability
  ABILITIES = {
    manage: false,
    write: true,
    read: true,    
  }
end
class Read < Ability
  ABILITIES = {
    manage: false,
    write: false,
    read: true,    
  }
end
class NoAccess < Ability
  ABILITIES = {
    manage: false,
    write: false,
    read: false,    
  }
end