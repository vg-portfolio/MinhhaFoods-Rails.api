class NewsSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn

  # has_many :news_posts
end
