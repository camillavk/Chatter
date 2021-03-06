post '/sessions' do 
	username = params[:username]
	password = params[:password]
	user = User.authenticate(username, password)
	if user 
		session[:user_id] = user.id 
		redirect to('/')
	else
		flash[:errors] = ["The username or password is incorrect"]
		erb :layout
	end
end

delete '/sessions' do 
	flash[:notice] = "Goodbye!"
	session[:user_id] = nil
	redirect to('/')
end