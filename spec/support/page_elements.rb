module PageElements

	RSpec::Matchers.define :have_selector do |selector ,message|
	match do |page|
		page.should have_selector(selector, text: message)
	end
end

end
