class QuestionsController < ApplicationController
	def index
		@question = Question.all
	end

	def show
		@question = Question.find(params[:id])
	end

	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.user_id = current_user.id
		@question.save
		redirect_to root_path
	end

	private
	def question_params
		params.require(:question).permit(:title, :question_content, :deletion_flag, :user_id)
	end
end
