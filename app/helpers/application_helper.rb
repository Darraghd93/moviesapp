module ApplicationHelper
	
	def signed_in? #? means boolean method 
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end
	end
end
