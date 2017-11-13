class AboutSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :image_url, :image_url2, :image_url3

  # has_one :history
  # has_one :why_u
  # has_many :awards

end
