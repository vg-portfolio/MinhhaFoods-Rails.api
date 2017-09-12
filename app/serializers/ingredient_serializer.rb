class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :body, :BodyVn

  belongs_to :ingredientable
end
