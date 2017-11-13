class NewsSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :image_url

  # has_many :news_posts
end
