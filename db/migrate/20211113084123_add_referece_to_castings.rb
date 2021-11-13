class AddRefereceToCastings < ActiveRecord::Migration[6.0]
  def change
    add_reference :castings, :anime, foreign_key: true
    add_reference :castings, :voice_actor, foreign_key: true
  end
end
