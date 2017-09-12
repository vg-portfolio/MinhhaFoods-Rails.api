class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :volume, :metric

  belongs_to :product_category
  has_many :descriptions, as: :describable
end
