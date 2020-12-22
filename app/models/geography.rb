class Geography < Location
  validates :name, uniqueness: true
end
