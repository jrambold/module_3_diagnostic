class SearchController < ApplicationController
  def index
    search = Search.new
    @stations = search.(params['q'])
  end
end
