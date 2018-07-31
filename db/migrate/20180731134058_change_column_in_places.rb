class ChangeColumnInPlaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :places, :category, :cat_id
  end
end
