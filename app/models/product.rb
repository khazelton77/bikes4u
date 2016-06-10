class Product < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true
	validates :description, presence: true
	validates :image_url, presence: true
	validates :color, presence: true
	validates :price, numericality: true
	def average_rating
		comments.average(:rating).to_f
	end
end
