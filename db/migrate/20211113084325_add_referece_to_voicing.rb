class AddRefereceToVoicing < ActiveRecord::Migration[6.0]
  def change
    add_reference :voicings, :voice_actor, foreign_key: true
    add_reference :voicings, :character, foreign_key: true
  end
end
