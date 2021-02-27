class MenuItem < ActiveRecord::Base
  belongs_to :menu_category

  def menu_list
    "#{id}. #{name} #{price}"
  end
end
