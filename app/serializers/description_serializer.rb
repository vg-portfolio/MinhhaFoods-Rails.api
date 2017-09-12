class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :body

  belongs_to :describable
end
