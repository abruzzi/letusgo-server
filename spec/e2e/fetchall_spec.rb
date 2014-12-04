# encoding: utf-8

require_relative '../spec_helper'


Capybara.app = POSApplication
Capybara.current_driver = :selenium

describe "Fetchall items", :type => :feature  do

	it "go to items list page" do
		visit "/"
		click_link "商品列表"
		expect(current_url).to include ("/views/items.html")
	end


	it "go to items list page" do
		visit "/"
		click_link "商品列表"
		expect(page).to have_content("商品列表")
	end
end