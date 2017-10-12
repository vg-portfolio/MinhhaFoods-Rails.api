class DishSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :dish_date, :youtube_link, :category_id

  # belongs_to :category
  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
