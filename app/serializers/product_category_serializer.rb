class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :catType, :catTypeVn, :description, :descriptionVn
end
