class ProductSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn

  # has_many :categories, as: :categorizable
end
