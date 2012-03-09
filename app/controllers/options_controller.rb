class OptionsController < ApplicationController

def index
	
end

def show
	@option = Option.find(params[:id])
end

def new
	@option = Option.new
	@poll = Poll.find(params[:poll_id])
	@question = Question.find(params[:question_id])
end

def create
	@question = Question.find(params[:question_id])
	@option = @question.options.new(params[:option])
	if @option.save
		redirect_to poll_questions_path
	else
		redirect_to new_poll_question_option_path
	end
end

def edit
	@option = Option.find(params[:id])
end

def update
	@option = Option.find(params[:id])
	if @option.update_attributes(params[:option])
		redirect_to poll_questions_path
	else
		redirect_to :back
	end
end

def destroy
	@option = Option.find(params[:id])
	@option.destroy
	redirect_to poll_questions_path
end

end
