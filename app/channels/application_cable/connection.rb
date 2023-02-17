module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_hardware_record = find_verified_user
    end

    private

    def find_verified_user
      hardware_record = HardwareRecord.find_by(id: cookies.encrypted[:id])
    end
  end
end
