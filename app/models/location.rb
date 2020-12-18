class Location < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  # validations
  validates :type, presence: true
  validates :name, presence: true

  scope :visited, -> { where(visited: true) }
  scope :unvisited, -> { where(visited: false) }
end
