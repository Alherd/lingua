module Parsing
  class BinStructParsingJob < ApplicationJob
    def perform
      MQTT::Client.connect("3.71.27.170", 1883) do |c|
        c.get("hardware/data") do |topic,message|
          record = BinaryStructure.read(message)

          HardwareRecord.create!(
            house_id: record[:house_id],
            time: record[:time],
            has_panel: record[:has_panel],
            has_battery: record[:has_battery],
            panel_power: record[:panel_power],
            battery_capacity: record[:battery_capacity],
            panel: record[:panel],
            battery: record[:battery],
            production: record[:production],
            consumption: record[:consumption])

          puts HardwareRecord.count
        end
      end
    end
  end
end
