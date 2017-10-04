class NewsSectionSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn

  # has_many :news_posts
end
