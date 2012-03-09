class UsersController < ApplicationController

def index
	if params[:username]
		@user = User.find(:conditions => [:username => params[:username]])
	end
end

def show
	
end

def new
	@user = User.new
end

def create
	@user = User.new(params[:user])
	@checkName = User.find(:all, :conditions => ['username = ?', params[:username]])
		if @user.save
			redirect_to users_path
		else
			redirect_to new_user_path
		end
end

def edit

end

def update

end

def destroy

end

def login
	@supposedUser = User.find(:all, :conditions => ['username = ?', params[:username]])
	@supposedUser.each do |user|
		if params[:password] == user.password
			session[:user_id] = user.id
			redirect_to users_path
		end
	end
end

end
