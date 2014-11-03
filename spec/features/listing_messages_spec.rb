require 'spec_helper'
require_relative 'helpers/session'

feature "User browses the list of available messages" do
	before(:each) {
		Peep.create(:title => "Example",
									:text => "Testing")
		User.create(:name => "Sam",
								:username => 'samsam',
								:email => "sam@example.com",
								:password => "cat",
								:password_confirmation => "cat")
	}

	xscenario "when opening the home page" do
		visit '/'
		sign_in('samsam', 'cat')
		add_peep("Example", "Testing")
		expect(page).to have_content("Example")
	end

	xscenario "with the author" do
		visit('/')
		sign_in('samsam', 'cat')
		add_peep("Example", "Testing")
		expect(page).to have_content("Sam Example Testing")
	end

end
