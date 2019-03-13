class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :products , :user_id, :brunch_id
  end
end
