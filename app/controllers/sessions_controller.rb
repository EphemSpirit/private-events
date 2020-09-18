class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:session][:name])
    if !user.nil?
      log_in user
      redirect_to user
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
  
end
