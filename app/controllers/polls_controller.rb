class PollsController < ApplicationController

def index
	@polls = Poll.all
end

def show
	@poll = Poll.find(params[:id])
end

def new
	@poll = Poll.new
end

def create
	@poll = Poll.new(params[:poll])
	if @poll.save
		redirect_to polls_path
	else
		redirect_to new_poll_path
	end
end

def edit

end

def update

end

def destroy

end


end
