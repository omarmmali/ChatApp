class HomeController < ApplicationController
	def index
	session[:conversations] ||= []
	
	@users = User.all.where.not(id: current_user, signed_in: false)
    
   	@conversations = Conversation.includes(:recipient, :messages).find(session[:conversations])
	end
end
