class BinaryStructure < BinData::Record
  endian :little
  int32   :house_id
  int32   :time
  int16   :has_panel
  int16   :has_battery
  int32   :panel_power
  int32   :battery_capacity
  int32   :panel
  int32   :battery
  int32   :production
  int32   :consumption
end
