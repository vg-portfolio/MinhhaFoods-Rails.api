class DishSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :dishDate, :youtubeLink, :category_id

  # belongs_to :category
  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
