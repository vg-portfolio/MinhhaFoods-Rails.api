class ChefSection < ApplicationRecord
  belongs_to :user

  has_many :chef_categories
end
