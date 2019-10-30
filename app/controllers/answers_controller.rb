class AnswersController < ApplicationController
  def new
  end

  def create
  	question = Question.find(params[:question_id])
    answer = current_user.answers.new(answer_params)
  	answer.question_id = params[:question_id]
  	if answer.save
  	  redirect_to question_path(question)
      flash[:notice] = "投稿完了しました"
    else
      redirect_back(fallback_location: root_path)
      flash[:notice] = "回答を記入してください"
    end
  end

  private
  def answer_params
  	params.require(:answer).permit(:user_id, :answer_content, :question_id)
  end
end
