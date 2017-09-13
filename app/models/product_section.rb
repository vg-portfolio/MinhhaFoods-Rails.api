class ProductSection < ApplicationRecord
  belongs_to :user
  has_many :categories, as: :categorizable
end
