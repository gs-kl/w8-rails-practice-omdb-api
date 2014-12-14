class WelcomeController < ApplicationController
  def print_results
    @search_results = Search.new(params[:title]).return
    render :index
  end
end
