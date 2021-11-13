class AddRefereceToAppearance < ActiveRecord::Migration[6.0]
  def change
    add_reference :appearances, :character, foreign_key: true
    add_reference :appearances, :anime, foreign_key: true
  end
end
