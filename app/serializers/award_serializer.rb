class AwardSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn
end
