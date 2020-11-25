class SearchesController < ApplicationController
  def new
    @search = Search.new(search_params)
  end

  def create
    @search = Search.create!(search_params[:search])
    redirect_to @search
  end

  def show
    @search = Search.find(search_params[:search])
  end

  private
  def search_params
    params.require(:search).permit(:open_date, :end_date, :role, :name)
  end
end
