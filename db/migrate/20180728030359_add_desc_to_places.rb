class AddDescToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :description, :text
    add_column :places, :address, :text
    add_column :places, :gplaces_id, :string
    add_column :places, :category, :integer
    add_reference :places, :user, foreign_key: true
    add_column :places, :enabled, :boolean
  end
end
