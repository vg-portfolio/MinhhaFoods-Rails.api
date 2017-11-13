class AddsSnakeCase < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_categories, :catType, :cat_type
    rename_column :product_categories, :catTypeVn, :cat_type_vn
    rename_column :product_categories, :descriptionVn, :description_vn

    rename_column :chef_categories, :catType, :cat_type
    rename_column :chef_categories, :catTypeVn, :cat_type_vn
    rename_column :chef_categories, :descriptionVn, :description_vn
  end
end
