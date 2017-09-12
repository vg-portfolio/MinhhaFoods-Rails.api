class Product < ApplicationRecord
  belongs_to :product_category
  has_many :descriptions, as: :describable
end
