class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :cat_type, :cat_type_vn, :description, :description_vn

  has_many :products

end
