class SearchController < ApplicationController
  def index
    search = Search.new(params['q'])
    @stations = search.nearby(['ELEC', 'LPG'], 6, 10)
  end
end
