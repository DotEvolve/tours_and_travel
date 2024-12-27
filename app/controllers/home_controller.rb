class HomeController < ApplicationController
  def index
    @airports = Airport.all
  end

  def destinations
    @airports = Airport.all
  end

  def map
  end

  def search_flights
    amadeus = Amadeus::Client.new({client_id: Rails.application.credentials.amadeus[:client_id], client_secret: Rails.application.credentials.amadeus[:client_secret]})
    @origin_location = params[:origin_location_code]
    @destination_location = params[:destination_location_code]
    @departuredate = params[:departure_date]
    returndate = params[:return_date]
    num_adults = params[:adults]
    num_children = params[:children]
    num_infants = params[:infants]
    travel_class_type = params[:travel_class]
    nonstop = params[:non_stop]
    currencycode = params[:currency_code]

    @response = amadeus.shopping.flight_offers_search.get(originLocationCode: @origin_location, destinationLocationCode: @destination_location, departureDate: @departuredate, returnDate: returndate, adults: num_adults, children: num_children, infants: num_infants, travelClass: travel_class_type, nonStop: nonstop, currencyCode: currencycode)
  rescue Amadeus::ClientError => @e
  end

  private

  def flight_params
    params.expect([:travel_type, :adults, :children, :infants, :travel_class, :non_stop, :currency_code, :origin_location_code, :destination_location_code, :departure_date, :return_date])
  end
end
