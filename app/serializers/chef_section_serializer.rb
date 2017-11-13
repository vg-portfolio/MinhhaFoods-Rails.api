class ChefSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn

  has_many :chef_categories
end
