class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :body, :bodyVn

  belongs_to :describable
end
