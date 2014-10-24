require 'spec_helper'
require_relative 'helpers/session'

feature "User adds a link" do 
	before(:each) do 
		User.create(:name => "Sam",
								:username => 'samsam',
								:email => "sam@example.com",
								:password => "cat",
								:password_confirmation => "cat")
	end

	scenario "when browsing the homepage" do 
		expect(Peep.count).to eq(0)
		visit '/'
		sign_in('samsam', 'cat')
		add_peep("example", "testing")
		expect(Peep.count).to eq(1)
		peep = Peep.first
		expect(peep.title).to eq("example")
	end



end