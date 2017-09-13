class Category < ApplicationRecord
  belongs_to :categorizable, polymorphic: true
  has_many :products
  # has_many :dishes
end
