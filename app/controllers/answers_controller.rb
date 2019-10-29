class AnswersController < ApplicationController
  def new
  	@answer = Answer.new
  end

  def create
  	question = Question.find(params[:question_id])
    answer = current_user.answers.new(answer_params)
  	answer.question_id = params[:question_id]
  	answer.save
  	redirect_to question_path(question)
    flash[:notice] = "投稿完了しました"
  end

  private
  def answer_params
  	params.require(:answer).permit(:user_id, :answer_content, :question_id)
  end
end
