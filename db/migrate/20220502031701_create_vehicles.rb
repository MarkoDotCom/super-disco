class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_identifier, length: 10, null: false

      t.timestamps
    end
  end
end
