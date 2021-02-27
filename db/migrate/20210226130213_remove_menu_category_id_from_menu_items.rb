class RemoveMenuCategoryIdFromMenuItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_items, :menu_category_id, :integer
  end
end
