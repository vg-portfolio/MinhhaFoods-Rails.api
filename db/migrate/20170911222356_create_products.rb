class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :title, null: false
      t.text :titleVn
      t.integer :volume
      t.boolean :metric

      t.timestamps null:false
    end
  end
end
