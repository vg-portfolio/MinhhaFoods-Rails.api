class InquirySerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :message, :seen
end
