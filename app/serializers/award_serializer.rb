class AwardSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :image_url
end
