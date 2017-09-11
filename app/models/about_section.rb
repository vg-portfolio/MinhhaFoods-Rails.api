class AboutSection < ApplicationRecord
  belongs_to :user
  has_one :history
  has_many :awards
  has_one :why_us
end
