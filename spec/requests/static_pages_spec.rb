require 'spec_helper'

describe "Static Pages" do

	describe "Home page" do

		it "should have the h1 'Twitter Clone'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Twitter Clone')
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "A new Twitter | Home")
		end
	end

		describe "Help" do

		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "A new Twitter | Help")
		end
	end

		describe "About" do

		it "should have the h1 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "A new Twitter | About")
		end
	end

		describe "Contact Us" do

		it "should have the h1 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')
		end

		it "should have the title 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "A new Twitter | Contact Us")
		end
	end

end
