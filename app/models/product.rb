class Product < ApplicationRecord
  belongs_to :product_category
  has_many :descriptions, as: :describable
  has_many :ingredients, as: :ingredientable
end