class Character < ApplicationRecord
  has_many :appearances, dependent: :destroy
  has_many :voicings, dependent: :destroy
  belongs_to :favorite
  has_many :voice_actors, through: :voicings
  has_many :animes, through: :appearances

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.favorite_all
    favorites = []
    index.each do |anime|
      favorites << anime if anime.favorite
    end
    favorites
  end
end
