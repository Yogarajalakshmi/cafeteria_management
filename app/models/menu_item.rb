class MenuItem < ActiveRecord::Base
  def menu_list
    "#{id}. #{name} #{price}"
  end
end
