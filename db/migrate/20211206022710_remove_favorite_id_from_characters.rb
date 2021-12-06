class RemoveFavoriteIdFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_reference :characters, :favorite, null: false, foreign_key: true
  end
end
