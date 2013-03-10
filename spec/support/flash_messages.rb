module FlashMessages

	RSpec::Matchers.define :have_error_message do |message|
		match do |page|
			page.should have_selector('div.alert.alert-error', text: message)
		end
	end

	RSpec::Matchers.define :not_have_error do
		match do |page|
			page.should_not have_selector('div.alert.alert-error')
		end
	end

end