class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :catType, :catTypeVn, :description, :descriptionVn

  has_many :products
  belongs_to :product_section
end
