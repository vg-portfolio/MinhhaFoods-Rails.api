class DescriptionSerializer < ActiveModel::Serializer
  attributes :id, :body, :body_vn

  # belongs_to :describable
end
