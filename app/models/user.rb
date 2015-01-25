class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { maximum: 50 }
end
