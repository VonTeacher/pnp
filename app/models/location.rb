class Location < ApplicationRecord
  # validations
  validates :type, presence: true
  validates :name, presence: true

  # constants
  TYPES = [
    'dungeon',
    'geography',
    'municipality'
  ]

  # scopes
  TYPES.each do |type|
    scope type.pluralize.to_sym, -> { where(type: type.capitalize) }
  end
  scope :visited, -> { where(visited: true) }
  scope :unvisited, -> { where(visited: false) }
end
