class CreateNewsPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :news_posts do |t|
      t.text :title, null: false
      t.text :titleVn
      t.text :description, null: false
      t.text :descriptionVn
      t.date :newsDate
      t.references :news_section, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
