class ChefCategory < ApplicationRecord
  belongs_to :chef_section
  has_many :dishes
end
