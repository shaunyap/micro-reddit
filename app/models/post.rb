class Post < ActiveRecord::Base
	has_many :comments
	belongs_to :user
	validates :title, presence: true, length: {maximum: 140}
	validates :user_id, presence: true, numericality: {only_integer: true}

end
