class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :railway
      t.string :stationname
      t.integer :time
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
