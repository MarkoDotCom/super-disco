class AddTableReferences < ActiveRecord::Migration[6.1]
  def change
    add_reference :gps, :vehicle, foreign_key: true
  end
end
