class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :details, :details_vn, :volume, :metric, :image_url, :product_category_id

  belongs_to :product_category
  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
