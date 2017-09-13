class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.text :catType, null: false
      t.text :catTypeVn
      t.text :description, null:false
      t.text :descriptionVn
      t.references :categorizable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
