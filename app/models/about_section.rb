class AboutSection < ApplicationRecord
  belongs_to :user
  has_one :history
end
