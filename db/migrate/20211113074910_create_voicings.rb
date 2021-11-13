class CreateVoicings < ActiveRecord::Migration[6.0]
  def change
    create_table :voicings do |t|

      t.timestamps
    end
  end
end
