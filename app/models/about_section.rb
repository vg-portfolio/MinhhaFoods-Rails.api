class AboutSection < ApplicationRecord
  belongs_to :user
  has_one :history
  has_many :awards
end
