class Anime < ApplicationRecord
  has_many :castings, dependent: :destroy
  has_many :appearances, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :favs, dependent: :destroy

  has_many :lists, through: :bookmarks
  has_many :voice_actors, through: :castings
  has_many :characters, through: :appearances

  validates :title_jp, presence: true
  validates :user_rating, inclusion: {in: 0..5}

  def self.favorite_all
    favorites = []
    index.each do |anime|
      favorites << anime if anime.favorite
    end
    favorites
  end
end
