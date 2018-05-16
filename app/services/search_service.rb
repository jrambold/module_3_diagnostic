class Search
  def initialize
    @headers = { authorizations: "x-api-key #{ENV['NREL_API_KEY']}" }
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    attr_reader :headers

    def conn
      Faraday.new('https://developer.nrel.gov/', headers: headers)
    end
end
