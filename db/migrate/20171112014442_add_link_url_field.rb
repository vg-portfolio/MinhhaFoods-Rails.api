class AddLinkUrlField < ActiveRecord::Migration[5.0]
  def change
    add_column :about_sections, :image_url, :text
    add_column :about_sections, :image_url_2, :text
    add_column :about_sections, :image_url_3, :text

    add_column :awards, :image_url, :text

    add_column :products, :image_url, :text

    add_column :chef_categories, :image_url, :text

    add_column :dishes, :image_url, :text

    add_column :news_sections, :image_url, :text
  end
end
