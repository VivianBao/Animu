class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :anime

  validates :content, presence: true
end
