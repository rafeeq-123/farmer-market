class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|

      t.timestamps
    end
  end
end
