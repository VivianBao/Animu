class Favorite < ApplicationRecord
  belongs_to :fav, polymorphic: true
end
