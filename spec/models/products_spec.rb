require_relative '../spec_helper'

describe Product do
	describe ".create" do
		it "presists a product with valid attributes" do
			product = Product.create(:name => "iPhone 5s", :price => 5322.00)
			
			expect(product).to be_persisted
		end

		it "does not presist a product when no price provided" do
			product = Product.create(:name => "iPhone 5s")
			
			expect(product).not_to be_persisted
			expect(product.errors[:price]).to include("can't be blank")
		end
	end
end