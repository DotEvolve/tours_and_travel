class Airport < ApplicationRecord
  def city_with_airport_name
    city + " - " + name
  end
end
