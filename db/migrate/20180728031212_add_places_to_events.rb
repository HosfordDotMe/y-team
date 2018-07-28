class AddPlacesToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :places, foreign_key: true
    add_column :events, :category, :integer
    add_reference :events, :user, foreign_key: true
    add_column :events, :enabled, :boolean
  end
end
