class CamelCaseCategories < ActiveRecord::Migration[5.0]
  def change
    rename_column :categories, :catType, :cat_type
    rename_column :categories, :catTypeVn, :cat_type_vn
    rename_column :categories, :descriptionVn, :description_vn
  end
end
