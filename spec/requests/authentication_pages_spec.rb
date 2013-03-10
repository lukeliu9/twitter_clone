require 'spec_helper'

describe "AuthenticationPages" do

subject { page }

	describe "signin page" do
		before { visit signin_path }

		it { have_selector('h1', 'Sign in') }
		it { have_selector('title', full_title('Sign in')) }
	end

	describe "signin" do
		before { visit signin_path }

		describe "with invalid information" do
			before { click_button "Sign in" }

			it { have_selector('title', 'Sign in') }
			it { have_error_message('Invalid') }

			describe "after visiting another page" do #testing for persistance of error
				before { click_link "Home" } #referring to the actual link text in the header
				it { not_have_error }
			end

		end

		describe "with valid information" do
			let(:user) { FactoryGirl.create(:user) }
			before { valid_signin(user) }

			it { have_selector('title', user.name) }
			it { should have_link('Profile', href: user_path(user)) }
			it { should have_link('Sign out', href: signout_path) }
			it { should_not have_link('Sign in', href: signin_path) }

			describe "followed by signout" do
				before { click_link "Sign out" }
				it { should have_link('Sign in') }
			end
		end
	end
end
 

