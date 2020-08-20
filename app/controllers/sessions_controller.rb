class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(params[:session][:name])
    if !user.nil?
      session[:user_id] = user.id
      flash[:success] = "signed in!"
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged Out"
    redirect_to root
  end
end
