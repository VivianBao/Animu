class AddRefereceToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :favorite, foreign_key: true
  end
end
