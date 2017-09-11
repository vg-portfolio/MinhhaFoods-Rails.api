class NewsPostSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn, :newsDate
end
