class Dungeon < Location
  validates :name, uniqueness: true
end
