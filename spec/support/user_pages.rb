module UserPages

def ValidEditSettings(user)
		fill_in "Name", 				with: new_name
		fill_in "Email",				with: new_email
		fill_in "Password",				with: user.password
		fill_in "Confirmation",			with: user.password
		click_button "Save changes"
	end
	
end
