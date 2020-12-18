class Location < ApplicationRecord
  # validations
  validates :type, presence: true
  validates :name, presence: true

  scope :visited, -> { where(visited: true) }
  scope :unvisited, -> { where(visited: false) }
end
