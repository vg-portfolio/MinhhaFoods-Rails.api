class AboutSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn

  # has_one :history
  # has_one :why_u
  # has_many :awards
end
