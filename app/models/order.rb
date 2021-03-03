require "active_record"

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items

  def self.findOrder
    findUser = User.find(12)
    all.where("user_id = ?", findUser.id)
  end
end
