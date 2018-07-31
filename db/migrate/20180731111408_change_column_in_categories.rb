class ChangeColumnInCategories < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :cat_type, :string
  end
end
