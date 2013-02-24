require 'spec_helper'

describe "Static Pages" do

	let(:base_title) {"A New Twitter"}
	let(:hone) {"Should have the h1"}
	let(:tit) {"Should have the title"}

	describe "Home page" do |hone, tit|

		it "#{hone} 'Twitter Clone'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Twitter Clone')
		end

		it "#{tit} 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title', :text => "#{base_title} | Home")
		end
	end

		describe "Help" do |hone, tit|

		it "#{hone} Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "#{tit} 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title', :text => "#{base_title} | Help")
		end
	end

		describe "About" do |hone, tit|

		it "#{hone} 'About'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About')
		end

		it "#{tit} 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title', :text => "#{base_title} | About")
		end
	end

		describe "Contact Us" do |hone, tit|

		it "#{hone} Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact Us')
		end

		it "#{tit} 'Contact Us'" do
			visit '/static_pages/contact'
			page.should have_selector('title', :text => "#{base_title} | Contact Us")
		end
	end

end
