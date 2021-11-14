class AddColumnToVoiceActors < ActiveRecord::Migration[6.0]
  def change
    add_column :voice_actors, :favorite, :boolean
  end
end
