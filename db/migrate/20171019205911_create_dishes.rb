class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.text :title, null: false
      t.text :title_vn
      t.text :youtube_link
      t.text :details
      t.text :details_vn
      t.references :chef_category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
