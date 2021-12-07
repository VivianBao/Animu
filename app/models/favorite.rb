class Favorite < ApplicationRecord
  belongs_to :fave_item, polymorphic: true
end
