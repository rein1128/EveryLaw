class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to root_path
  end

  
  def show
    @user = User.find(params[:id])
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  def about
  end


  private
  def user_params
  	params.require(:user).permit(:user_name, :image, :email)
  end

  def correct_user
    @user=User.find(params[:id])
    if @user != current_user
      redirect_to questions_path
    end
  end
end
