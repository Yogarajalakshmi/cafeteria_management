class RemoveMenuIdFromMenuItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_items, :menu_id, :bigint
  end
end
