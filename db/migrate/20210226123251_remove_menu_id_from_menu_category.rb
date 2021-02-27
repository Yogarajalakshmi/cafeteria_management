class RemoveMenuIdFromMenuCategory < ActiveRecord::Migration[6.1]
  def change
    remove_column :menu_categories, :menu_id, :bigint
  end
end
