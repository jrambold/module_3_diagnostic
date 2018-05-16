class SearchService
  def initialize
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  private
    attr_reader :headers

    def conn
      Faraday.new('https://developer.nrel.gov', headers: headers)
    end
end
