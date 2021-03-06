class VoiceActor < ApplicationRecord
  has_many :castings, dependent: :destroy
  has_many :voicings, dependent: :destroy
  has_many :favorites, as: :fave_item, dependent: :destroy

  has_many :animes, through: :castings
  has_many :characters, through: :voicings

  validates :name, presence: true
  validates :name, uniqueness: true
end
