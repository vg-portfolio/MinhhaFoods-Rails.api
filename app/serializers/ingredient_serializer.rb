class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :body, :body_vn

  # belongs_to :ingredientable
end
