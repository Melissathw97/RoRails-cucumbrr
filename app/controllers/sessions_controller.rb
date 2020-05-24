class SessionsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
      flash[:notice] = "Welcome back, #{current_user.username}! ;)"
    else
      flash.now[:notice] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out, baiiii. See you soon! :)"
  end
end
