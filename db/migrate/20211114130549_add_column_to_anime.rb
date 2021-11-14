class AddColumnToAnime < ActiveRecord::Migration[6.0]
  def change
    add_column :animes, :favorite, :boolean
  end
end
