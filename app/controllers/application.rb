get '/' do 
	@peeps = Peep.all
	erb :layout
end