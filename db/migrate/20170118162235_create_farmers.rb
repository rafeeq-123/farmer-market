class CreateFarmers < ActiveRecord::Migration[5.0]
  def change
    create_table :farmers do |t|
      t.string :farmer_market_name 
      t.string :schedule 
      t.text :speciality 
      t.string :price_range

      t.timestamps
    end
  end
end
