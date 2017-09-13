class CategorySerializer < ActiveModel::Serializer
  attributes :id, :catType, :catTypeVn, :description, :descriptionVn

  has_many :products
  #has_many :dishes
end
