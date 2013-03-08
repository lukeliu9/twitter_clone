module UsersHelper
	# Returns Gravatar for given user
	def gravatar_for(user, options = { size:50 })
	gravatar_id = Digest::MD5::hexdigest(user.email.downcase) #converts to gravatar-readble id
	size = options[:size]
	gravatar_url = "https://secure.gravatar.com/avatars/#{gravatar_id}.png?s=#{size}"
	image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
