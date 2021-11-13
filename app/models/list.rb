class List < ApplicationRecord
  belongs_to :bookmark
  has_many :animes, through: :bookmarks
end
