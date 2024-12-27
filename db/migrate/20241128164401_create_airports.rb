class CreateAirports < ActiveRecord::Migration[7.0]
  def change
    create_table :airports do |t|
      t.string :altitude
      t.string :city
      t.string :country
      t.string :dst
      t.string :iata
      t.string :icao
      t.string :latitude
      t.string :longitude
      t.string :name
      t.string :timezone
      t.string :tz_name

      t.timestamps
    end
  end
end
