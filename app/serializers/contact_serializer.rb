class ContactSerializer < ActiveModel::Serializer
  attributes :id, :title, :title_vn, :description, :description_vn, :company_name, :company_name_vn, :tel, :hotline, :fax, :addess, :fb_link
end
