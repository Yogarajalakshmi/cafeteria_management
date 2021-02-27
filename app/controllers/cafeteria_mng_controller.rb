class CafeteriaMngController < ApplicationController
  def index
    #render plain: "Hello, this is the management app #{DateTime.now.to_s(:short)}"
    #render plain: MenuItem.all.map { |i| i.menu_list }.join("\n")
    render "index"
  end

  def show
    id = params[:id]
    cafeteria_mng = MenuItem.find(id)
    render "cafeteria_mng"
  end
end
