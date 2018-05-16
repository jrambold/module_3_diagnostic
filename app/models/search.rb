class Search
  def initialize(zip)
    @search_service = SearchService.new
    @zip = zip
  end

  # (name, address, fuel_types, distance, access_times)
  def nearby(fuel_types, distance, limit)
    raw_stations = @search_service.get_url("/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&fuel_type=#{fuel_types[0]},#{fuel_types[1]}&limit=#{limit}&radius=#{distance}&api_key=#{ENV['NREL_API_KEY']}")
    stations = raw_stations[:fuel_stations].map do |station|
      Station.new(station[:station_name],station[:street_address],station[:fuel_type_code],station[:distance],station[:access_days_time])
    end
    stations
  end

end
