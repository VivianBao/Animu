class AddRefereceToVoiceActors < ActiveRecord::Migration[6.0]
  def change
    add_reference :voice_actors, :favorite, foreign_key: true
  end
end
