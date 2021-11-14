class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :animes, through: :bookmarks

  validates :name, presence: true
end
