class Municipality < Location
  validates :name, uniqueness: true
end
