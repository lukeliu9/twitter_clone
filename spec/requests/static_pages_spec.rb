require 'spec_helper'

describe "Static Pages" do

	subject { page }

	shared_examples_for "all static pages" do
		it {should have_selector('h1', text: heading) }
		it {should have_selector('title', text: full_title(page_title)) }
	end

		describe "Home page" do
			before { visit root_path }

		let(:heading) {'Twitter Clone'}
		let(:page_title) {''}
		it_should_behave_like "all static pages"

	end

		describe "Help" do
			before { visit help_path }

		let(:heading) {'Help'}
		let(:page_title) {'Help'}
		it_should_behave_like "all static pages"

	end

		describe "About" do
			before { visit about_path }

		let(:heading) {'About'}
		let(:page_title) {'About'}
		it_should_behave_like "all static pages"

	end

		describe "Contact Us" do
			before { visit contact_path }

		let(:heading) {'Contact Us'}
		let(:page_title) {'Contact Us'}
		it_should_behave_like "all static pages"
	end

	it "should have the right links in the layout" do
		visit root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
		click_link "Contact"
		page.should have_selector 'title', text: full_title('Contact Us')
		visit root_path
		click_link "Sign up now!"
		page.should have_selector 'title', text: full_title('Sign up')
	end

end