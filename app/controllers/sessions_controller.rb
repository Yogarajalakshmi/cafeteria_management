class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      #render plain: "You have entered the current password"
      redirect_to "/cafeteria_mng"
    else
      render plain: "Incorrect password!"
    end
  end
end
