class AddUserIdToFarmer < ActiveRecord::Migration[5.0]
  def change
    add_column :farmers, :user_id, :integer
  end
end
