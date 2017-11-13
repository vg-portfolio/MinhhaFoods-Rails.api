class ChefCategorySerializer < ActiveModel::Serializer
  attributes :id, :cat_type, :cat_type_vn, :description, :description_vn, :image_url

  has_many :dishes
end
