class RemoveFavoriteFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :favorite, :boolean
  end
end
