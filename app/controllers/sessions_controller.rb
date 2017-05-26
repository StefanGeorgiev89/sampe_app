class SessionsController < ApplicationController
  def new
  end

  def create
     asdd1 = User.find_by(email: params[:session][:email].downcase)
    if asdd1 && asdd1.authenticate(params[:session][:password])
      log_in asdd1
      params[:session][:remember_me] == '1' ? remember(asdd1) : forget(asdd1)
      redirect_to asdd1
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
  	log_out if logged_in?
    redirect_to root_url
  end
end
