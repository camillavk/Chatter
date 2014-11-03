module SessionHelpers

	def sign_up(name = "Sam",
							username = "samsam",
							email = "sam@example.com",
							password = "cat",
							password_confirmation = "cat")
		visit '/'
		within('#signupup') do
			fill_in :name, :with => name
			fill_in :username, :with => username
			fill_in :email, :with => email
			fill_in :password, :with => password
			fill_in :password_confirmation, :with => password_confirmation
			click_button "Sign up"
		end
	end

	def sign_in(username, password)
		visit '/'
		within('#signinup') do
			fill_in :username, :with => username
			fill_in :password, :with => password
			click_button "Sign in"
		end
	end

	def add_peep(title, text)
		visit '/'
		within('#newpeepup') do
			fill_in 'title', :with => title
			fill_in 'text', :with => text
			click_button "Peep"
		end
	end

end
