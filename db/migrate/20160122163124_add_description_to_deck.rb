class AddDescriptionToDeck < ActiveRecord::Migration
  def change
    add_column :decks, :description, :string
  end
end
