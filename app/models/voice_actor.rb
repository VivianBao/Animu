class VoiceActor < ApplicationRecord
  has_many :castings
  has_many :voicings
  belongs_to :favorite
  has_many :animes, through: :castings
  has_many :characters, through: :voicings
end
