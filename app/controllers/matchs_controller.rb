class MatchsController < ApplicationController
	def index
		@all_types = Match.all_types
		@matches = Match.all
		userID = session[:currUserID] || 0
		if userID != 0
			@user = User.find(userID)
			puts 'USERID:', @user.Name
		end
	end
end
