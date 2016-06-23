require 'rails_helper'

describe Product do
	context "When the product has comments" do
end

	before do
		@product = FactoryGirl.create(:product)
	end

	before do
		@user = FactoryGirl.create(:user)
	end

	before do
		@product.comments.create!(rating: 1, user: @user, body: "TERRIBLE!")
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

	it "product is invalid" do
		expect(Product.new).not_to be_valid
	end

end
