class ProductSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn

  has_many :product_categories
end
