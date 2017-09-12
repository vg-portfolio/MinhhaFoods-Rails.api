class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.text :body
      t.text :BodyVn
      t.references :ingredientable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
