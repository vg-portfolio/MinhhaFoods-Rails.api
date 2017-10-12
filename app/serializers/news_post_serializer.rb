class NewsPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :news_date
end
