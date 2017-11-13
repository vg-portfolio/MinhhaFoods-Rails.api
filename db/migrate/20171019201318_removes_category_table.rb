class RemovesCategoryTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :ingredients
    drop_table :descriptions
    drop_table :products
    drop_table :dishes
    drop_table :categories

  end
end
