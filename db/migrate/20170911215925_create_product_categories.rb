class CreateProductCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_categories do |t|
      t.text :catType, null: false
      t.text :catTypeVn
      t.text :description, null: false
      t.text :descriptionVn
      t.references :product_section, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
