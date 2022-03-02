class RemoveReferenceToAnime < ActiveRecord::Migration[6.0]
  def change
    remove_reference :animes, :list, foreign_key: true, null: true
  end
end
