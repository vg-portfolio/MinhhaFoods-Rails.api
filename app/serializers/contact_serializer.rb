class ContactSerializer < ActiveModel::Serializer
  attributes :id, :title, :titleVn, :description, :descriptionVn, :companyName, :companyNameVn, :tel, :hotline, :fax, :addess, :fbLink
end
