class AddRefereceToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookmarks, :list, foreign_key: true
    add_reference :bookmarks, :anime, foreign_key: true
  end
end
