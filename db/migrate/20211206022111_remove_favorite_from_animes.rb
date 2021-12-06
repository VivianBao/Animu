class RemoveFavoriteFromAnimes < ActiveRecord::Migration[6.0]
  def change
    remove_column :animes, :favorite, :boolean
  end
end
