class HomeController < ApplicationController
  skip_before_action :ensure_user_loggin_in

  def index
    if current_user
      redirect_to cafeteria_mng_index_path
    else
      render "index"
    end
  end
end
