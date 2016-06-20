require 'rails_helper'

describe Product do
	context "When the product has comments" do
end

	before do
		@product = Product.create!(name: "race bike", description: "fast bike", image_url: "assets/citybike.jpeg", color: "purple", price: "100")
	end

	before do
		@user = User.create!(email: "jimmy@buffett.com", password: "123456")
	end 
		
	before do
		@product.comments.create!(rating: 1, user: @user, body: "The most awful bike ever!")
		@product.comments.create!(rating: 3, user: @user, body: "Good, not great.")
		@product.comments.create!(rating: 5, user: @user, body: "NICE BIKE!")
	end 
 

	it "returns the average rating of all comments" do
		expect(@product.comments.average(:rating)).to eq 3
	end

		context "Does not work" do
		end

		before do
			Product.new(description: "Nice bike")
		end

	it "product is invalid" do
		expect(Product.new).not_to be_valid
	end

end