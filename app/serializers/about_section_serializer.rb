class AboutSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn

  has_one :history
  has_one :why_u
  has_many :awards
end
