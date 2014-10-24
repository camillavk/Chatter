get '/' do 
	@peeps = Peep.all
	@user = User.new
	erb :layout
end