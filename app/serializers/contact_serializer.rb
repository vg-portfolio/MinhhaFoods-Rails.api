class ContactSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :companyName, :companyNameVn, :tel, :hotline, :fax, :addess, :fbLink
end
