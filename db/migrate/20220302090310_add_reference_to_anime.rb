class AddReferenceToAnime < ActiveRecord::Migration[6.0]
  def change
    add_reference :animes, :list, foreign_key: true, null: true
  end
end
