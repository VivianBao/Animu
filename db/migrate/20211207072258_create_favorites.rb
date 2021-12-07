class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :rating
      t.references :fave_item, polymorphic: true
      t.timestamps
    end
  end
end
