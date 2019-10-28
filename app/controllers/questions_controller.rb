class QuestionsController < ApplicationController

	def index
		@q = Question.ransack(params[:q])
		@questions = @q.result(distinct: true).page(params[:page]).per(25).order(created_at: "DESC")
	end

	def search
	   @q = Question.search(search_params)
	   @questions = @q.result(distinct: true)
	 end

	def show
		@question = Question.find(params[:id])
		@answer = Answer.new
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
		params.require(:question).permit(:title, :question_content, :user_id)
	end

	def search_params
    	params.require(:q).permit!
  	end
end
