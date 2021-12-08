class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :animes, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true
end
