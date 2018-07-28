class CreatePlaceComments < ActiveRecord::Migration[5.2]
  def change
    create_table :place_comments do |t|
      t.integer :rating
      t.string :title
      t.text :text
      t.references :user, foreign_key: true
      t.references :place, foreign_key: true
      t.boolean :flagged
      t.boolean :enabled

      t.timestamps
    end
  end
end
