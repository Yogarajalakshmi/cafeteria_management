class UsersController < ApplicationController
  skip_before_action :ensure_user_loggin_in

  def new
    render "users/new"
  end

  def create
    #user =
    User.create!(
      firstname: params[:first_name],
      lastname: params[:last_name],
      email: params[:email],
      password: params[:password],
    )
    #session[:current_user_id] = user.id
    redirect_to "/"
  end
end
