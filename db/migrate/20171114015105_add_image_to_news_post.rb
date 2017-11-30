class AddImageToNewsPost < ActiveRecord::Migration[5.0]
  def change
    add_column :news_posts, :image_url, :text
  end
end
