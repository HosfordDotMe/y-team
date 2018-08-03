class CreateEventComments < ActiveRecord::Migration[5.2]
  def change
    create_table :event_comments do |t|
      t.integer :rating
      t.string :title
      t.text :text
      t.boolean :flagged
      t.boolean :enabled
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
