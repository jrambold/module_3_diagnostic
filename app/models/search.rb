class Search
  def initialize(zip)
    @search_service = SearchService.new
    @zip = zip
  end

  def nearby(fuel_types, distance, limit)
    @search_service.get_url("/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&fuel_type=#{fuel_types[0]},#{fuel_types[1]}&limit=#{limit}&radius=#{distance}&api_key=#{ENV['NREL_API_KEY']}")
  end

end
