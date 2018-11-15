class SessionsController < ApplicationController
  def new
  end

  def create
    render 'new'  # renders the new.html.erb view for Sessions
  end

  def destroy
  end
end
