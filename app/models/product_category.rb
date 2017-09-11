class ProductCategory < ApplicationRecord
  belongs_to :product_section
  has_many :products
end
