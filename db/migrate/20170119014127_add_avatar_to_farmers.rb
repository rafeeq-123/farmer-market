class AddAvatarToFarmers < ActiveRecord::Migration[5.0]
  def change
    add_column :farmers, :avatar, :string
  end
end
