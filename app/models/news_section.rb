class NewsSection < ApplicationRecord
  belongs_to :user
  has_many :news_posts
end
