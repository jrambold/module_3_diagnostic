class SearchController < ApplicationController
  def index
    @zip = params['q']
    @action = params['commit']
    @utf8 = true if params['utf8'] == '✓'
  end
end
