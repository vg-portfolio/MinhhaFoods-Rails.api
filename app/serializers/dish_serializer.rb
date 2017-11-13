class DishSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :youtube_link, :details, :details_vn, :image_url, :chef_category_id

  belongs_to :chef_category
  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
