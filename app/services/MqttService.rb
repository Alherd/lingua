class MqttService
  def perform
    client do |c|
      c.get('test') do |topic,message|
        puts "#{topic}: #{message}"
      end
    end
  end

  private

  def client
    client ||= MQTT::Client.connect(
      :host => “servernamer.example.com”,
      :port => 8080,
      :ssl => true
     )
  end
end
