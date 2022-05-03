class CreateGps < ActiveRecord::Migration[6.1]
  def change
    create_table :gps do |t|
      t.decimal :longitude, null: false
      t.decimal :latitude, null: false

      t.timestamps
    end
  end
end
