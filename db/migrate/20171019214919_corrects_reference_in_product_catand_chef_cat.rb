class CorrectsReferenceInProductCatandChefCat < ActiveRecord::Migration[5.0]
  def change
    add_reference :chef_categories, :chef_section, index: true, foreign_key: true, null: false
    add_reference :product_categories, :product_section, index: true, foreign_key: true, null: false

    remove_reference :chef_categories, :chef_sections
    remove_reference :product_categories, :product_sections
  end
end
