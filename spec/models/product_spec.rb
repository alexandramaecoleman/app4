require 'rails_helper'

describe Product do
	before do
  @product = Product.create!(name: "race bike")
  @user = User.create!(email: "alexandramaecoleman@gmail.com", password: "alxy25")
  @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
  @product.comments.create!(rating: 2, user: @user, body: "Ok bike!")
  @product.comments.create!(rating: 3, user: @user, body: "Good bike!")
end

it "returns the average rating of all comments" do
	expect(@product.average_rating).to eq 2.0
end

it "is not valid" do
	expect(Product.new(description: "Nice bike")).not_to be_valid
end


end