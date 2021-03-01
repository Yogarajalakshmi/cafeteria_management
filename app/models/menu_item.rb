class MenuItem < ActiveRecord::Base
  belongs_to :menu_category

  def menu_list
    "#{id}. #{name} #{price}"
  end

  def self.findB
    menucat = MenuCategory.first
    all.where("menu_category_id = ?", menucat.id)
  end

  def self.findD
    menucat = MenuCategory.second
    all.where("menu_category_id = ?", menucat.id)
  end
end
