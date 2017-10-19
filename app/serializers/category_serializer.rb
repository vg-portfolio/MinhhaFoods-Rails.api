class CategorySerializer < ActiveModel::Serializer
  attributes :id, :cat_type, :cat_type_vn, :description, :description_vn, :categorizable_type, :categorizable_id

  #Displays array of products AND dishes belonging to this category
  has_many :products
  has_many :dishes

end

###
#Make product section and chef section a join table. That way, serializer will display either array of products OR categories. Not both
