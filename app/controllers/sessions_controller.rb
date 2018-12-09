class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase) # find user somehow
    if user && user.authenticate(params[:session][:password]) #and (user.password == :password) # user exists AND has the correct login password
      # Log the user in and redirect to the user's show page.
      log_in(user)
      redirect_to root_url
    else
      # error handling, display error message
      flash.now[:danger] = ["Invalid username and/or password."]
      render 'new'
    end
  end

  def destroy
  	log_out
  	redirect_to root_url
  end
end
