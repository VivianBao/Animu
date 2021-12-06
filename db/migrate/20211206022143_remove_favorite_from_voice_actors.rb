class RemoveFavoriteFromVoiceActors < ActiveRecord::Migration[6.0]
  def change
    remove_column :voice_actors, :favorite, :boolean
  end
end
