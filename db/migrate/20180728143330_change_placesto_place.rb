class ChangePlacestoPlace < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :places_id, :place_id
  end
end
