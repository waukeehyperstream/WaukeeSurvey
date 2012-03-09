class QuestionsController < ApplicationController

def index
	@poll = Poll.find(params[:poll_id])
	@questions = @poll.questions.all
	@options = []
	@questions.each do |question|
		@qOptions = question.options.all
		@options.push(@qOptions)
	end
end

def show
	@poll = Poll.find(params[:poll_id])
	@question = Question.find(params[:id])
end

def new
	@question = Question.new
	@poll = Poll.find(params[:poll_id])
end

def create
	@poll = Poll.find(params[:poll_id])
	@question = @poll.questions.new(params[:question])
	if @question.save
		redirect_to poll_questions_path
	else
		redirect_to new_poll_question_path
	end
end

def edit
	@question = Question.find(params[:id])
end

def update
	@question = Question.find(params[:id])
	if @question.update_attributes(params[:question])
		redirect_to poll_questions_path
	else
		redirect_to edit_poll_question_path
	end
end

def destroy
	@question = Question.find(params[:id])
	@options = Option.find(:all, :conditions => ['question_id = ?', params[:id]])
	@options.each do |option|
		option.destroy
	end
	@question.destroy
	redirect_to poll_questions_path
end




end
