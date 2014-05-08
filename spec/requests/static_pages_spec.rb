require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
 
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("#{base_title}")
    end

    it "shoudl not have the custom title" do
    	visit '/static_pages/home'
    	expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "shoud have the tile 'Help'" do 
  		visit '/static_pages/help'
  		expect(page).to have_title("#{base_title} | Help")
  	end
  end

  describe "About Page" do
  	it "should have content 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About Us')
  	end

  	it "shoud have the tile 'About'" do 
  		visit '/static_pages/about'
  		expect(page).to have_title("#{base_title} | About Us")
  	end
  end

  describe "Contact Page" do
  	it "should have content 'Contact Page'" do
  		visit '/static_pages/contact'
  		expect(page).to have_content('Contact Page')
  	end

  	it "should have title 'Contact Page'" do
  		visit '/static_pages/contact'
  		expect(page).to have_title("#{base_title} | Contact Page")
  	end
  end
end