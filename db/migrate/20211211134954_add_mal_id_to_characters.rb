class AddMalIdToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :mal_id, :integer
  end
end
