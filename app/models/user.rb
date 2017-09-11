# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_one :about_section
  has_one :news_section
  has_many :examples

end
