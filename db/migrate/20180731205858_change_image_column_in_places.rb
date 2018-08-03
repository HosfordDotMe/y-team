class ChangeImageColumnInPlaces < ActiveRecord::Migration[5.2]
  def change
    change_column :places, :image_uri, :text
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
