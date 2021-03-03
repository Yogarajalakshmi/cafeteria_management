require "active_record"

class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :menu_item

  def self.findOrderList
    order1 = Order.find(1)
    all.where("order_id = ?", order1.id)
  end
end
