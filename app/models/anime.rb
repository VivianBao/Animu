class Anime < ApplicationRecord
  has_many :castings
  has_many :appearances
  has_many :bookmarks
  belongs_to :favorite

  has_many :lists, through: :bookmarks
  has_many :voice_actors, through: :castings
  has_many :characters, through: :appearances
end
