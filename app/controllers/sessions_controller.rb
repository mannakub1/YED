class SessionsController < ApplicationController
  def new
  end
  def create
  	  user = User.find_by(string: params[:session][:string].downcase)
    if user && user.authenticate(params[:session][:password])
       log_in user
      redirect_to blogs_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  def destroy
  end
end
