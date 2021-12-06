class RemoveFavoriteIdFromVoiceActors < ActiveRecord::Migration[6.0]
  def change
    remove_reference :voice_actors, :favorite, null: false, foreign_key: true
  end
end
