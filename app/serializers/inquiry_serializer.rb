class InquirySerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :email, :message, :seen
end
