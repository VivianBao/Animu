class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :title_jp
      t.string :title_eng
      t.text :description
      t.string :poster_url
      t.float :rating
      t.integer :rank
      t.integer :episodes
      t.integer :user_rating

      t.timestamps
    end
  end
end
