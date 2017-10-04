class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :volume, :metric, :category_id

  # has_many :descriptions, as: :describable
  # has_many :ingredients, as: :ingredientable
end
