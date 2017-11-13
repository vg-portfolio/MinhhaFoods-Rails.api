class RenameUrlNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :about_sections, :image_url_2, :image_url2
    rename_column :about_sections, :image_url_3, :image_url3
  end
end
