class CreateVoiceActors < ActiveRecord::Migration[6.0]
  def change
    create_table :voice_actors do |t|
      t.string :name

      t.timestamps
    end
  end
end
