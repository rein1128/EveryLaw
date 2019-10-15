class UsersController < ApplicationController
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


  private
  def user_params
  	params.require(:user).permit(:user_name, :image, :email)
  end
end
