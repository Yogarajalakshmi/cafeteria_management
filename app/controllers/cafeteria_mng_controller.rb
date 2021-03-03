class CafeteriaMngController < ApplicationController
  def index
    #render plain: "Hello, this is the management app #{DateTime.now.to_s(:short)}"
    #render plain: MenuItem.all.map { |i| i.menu_list }.join("\n")
    #@orders = Order.where(user_id: current_user.id)
    render "index"
  end

  def show
    id = params[:id]
    cafeteria_mng = MenuItem.find(id)
    render "cafeteria_mng"
  end

  #def create
  #  response_text = "Your order has been placed"
  #  render plain: response_text
  #  redirect_to cafeteria_mng_index_path
  #end
end
