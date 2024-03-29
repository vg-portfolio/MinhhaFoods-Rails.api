class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :title, null: false
      t.text :title_vn
      t.text :details
      t.text :details_vn
      t.integer :volume
      t.boolean :metric
      t.references :product_category, index: true, foreign_key: true, null: false

      t.timestamps null:false
    end
  end
end
