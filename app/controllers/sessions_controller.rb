class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find(user_params)
    if user
      session[:user_id] = user.id
      redirect_to chatrooms_path
    else
      redirect_to login_path, notice: {username: ["donesn't exist"]}
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:user_name)
  end
end
