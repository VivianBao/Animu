class VoiceActor < ApplicationRecord
  has_many :castings, dependent: :destroy
  has_many :voicings, dependent: :destroy
  belongs_to :favorite
  has_many :animes, through: :castings
  has_many :characters, through: :voicings

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
