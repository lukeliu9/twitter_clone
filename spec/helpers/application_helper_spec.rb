require 'spec_helper'

describe ApplicationHelper do

	describe "full_title" do
		it "should include the title page" do
			full_title("foo").should =~ /foo/
		end

		it "should include the base title" do
			full_title("foo").should =~ /^A New Twitter/
		end

	end
end
