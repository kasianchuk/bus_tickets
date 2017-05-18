class RoutesController < ApplicationController
  before_action :set_route, only: [:show]

  def index
    @routes = Route.all
  end

  def show
  end

  private

    def set_route
      @route = Route.find(params[:id])
    end

    def route_params
      params.require(:route).permit(:numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop)
    end
end
