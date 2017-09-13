class ChangeReferenceInProducts < ActiveRecord::Migration[5.0]
  def change
    remove_reference :products, :product_category
    add_reference :products, :category, index: true, foreign_key: true, null: false
  end
end
