class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :volume, :metric

  belongs_to :category
  has_many :descriptions, as: :describable
  has_many :ingredients, as: :ingredientable
end
