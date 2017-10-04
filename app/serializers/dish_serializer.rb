class DishSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :dishDate, :youtubeLink, :category_id

  # belongs_to :category
  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
