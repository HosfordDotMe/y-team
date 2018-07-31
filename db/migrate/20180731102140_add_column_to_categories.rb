class AddColumnToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :cat_type, :integer
  end
end
