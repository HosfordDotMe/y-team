class ChangeCategoryColumnInEvent < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :category, :cat_id
  end
end
