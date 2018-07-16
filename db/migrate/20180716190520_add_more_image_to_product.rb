class AddMoreImageToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image_url2, :text
    add_column :products, :image_url3, :text
    add_column :products, :image_url4, :text
  end
end
