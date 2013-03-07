FactoryGirl.define do
	factory :user do
		name      "Luke Liu"
		email 	  "luketliu@gmail.com"
		password  "foobar"
		password_confirmation "foobar"
	end
end