class Product < ActiveRecord::Base
	has_many :comments
	validates :name, presence: true

	def submit
	end

	def average_rating
  comments.average(:rating).to_f
  end


end

