AMADEUS = Amadeus::Client.new({
  client_id: Rails.application.credentials.amadeus[:client_id],
  client_secret: Rails.application.credentials.amadeus[:client_secret]
})