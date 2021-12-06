class RemoveFavoriteIdFromAnimes < ActiveRecord::Migration[6.0]
  def change
    remove_reference :animes, :favorite, null: false, foreign_key: true
  end
end
