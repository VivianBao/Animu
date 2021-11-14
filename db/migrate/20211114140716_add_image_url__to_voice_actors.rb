class AddImageUrlToVoiceActors < ActiveRecord::Migration[6.0]
  def change
    add_column :voice_actors, :image_url, :string
  end
end
