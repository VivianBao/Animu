class Character < ApplicationRecord
  has_many :appearances, dependent: :destroy
  has_many :voicings, dependent: :destroy
  has_many :favorites, dependent: :destroy

  has_many :voice_actors, through: :voicings
  has_many :animes, through: :appearances

  validates :name, presence: true
  validates :name, uniqueness: true
end
