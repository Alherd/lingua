class CreateHardwareRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :hardware_records do |t|
      t.integer :house_id
      t.integer :time
      t.integer :has_panel
      t.integer :has_battery
      t.integer :panel_power
      t.integer :battery_capacity
      t.integer :panel
      t.integer :battery
      t.integer :production
      t.integer :consumption

      t.timestamps
    end
  end
end
# ?{:house_id=>3, :time=>1675676820, :has_panel=>1, :has_battery=>0, :panel_power=>11000, :battery_capacity=>0, :panel=>29875, :battery=>0, :production=>43036, :consumption=>25622}