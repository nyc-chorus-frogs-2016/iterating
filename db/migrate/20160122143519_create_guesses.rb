class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.boolean :is_correct, null: false
      t.integer :round_id, null: false
      t.integer :card_id, null: false

      t.timestamps null: false
    end
  end
end
