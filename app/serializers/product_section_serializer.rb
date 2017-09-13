class ProductSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn

  has_many :categories, as: :categorizable
end
