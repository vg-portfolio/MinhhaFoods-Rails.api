class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.text :title, null: false
      t.text :titleVn
      t.date :dishDate
      t.text :youtubeLink
      t.references :category, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
