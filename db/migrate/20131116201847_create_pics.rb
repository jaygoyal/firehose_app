# This is communicates between the model and the DB
# The "t" variable could be anything
# "string" "integer" and "text" correspond to specific types of inputs


class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string  :emotion
      t.text    :learned
      t.integer :lesson

      t.timestamps
    end
  end
end
