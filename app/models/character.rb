class Character < ApplicationRecord
  has_many :appearances
  has_many :voicings
  belongs_to :favorite
  has_many :voice_actors, through: :voicings
  has_many :animes, through: :appearances
end
