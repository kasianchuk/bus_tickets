class RoutesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :update]
  before_action :set_route, only: [:show, :update]

  def index
    search_with_params (params)
  end

  def show
  end

  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to routes_path, notice: "Ви купили білет на маршрут #{@route.departure}-#{@route.arrival}  #{@route.tickets.map(&:chair_num).last} місце." }
      else
        format.html { redirect_to @route, alert: "Перевірте правильність введення або це місце зайняте" }
      end
    end
    # binding.pry
  end

  private

    def set_route
      @route = Route.find(params[:id])
    end

    def search_with_params (params)
      @routes = Route.all
      @routes = @routes.by_departure(params[:departure]) if params[:departure].present?
      @routes = @routes.by_date(params[:departure_date]) if params[:departure_date].present?
      @routes = @routes.page(params[:page]).per(20)
    end

    def route_params
      params.require(:route).permit(:numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop, tickets_attributes: [:id, :chair_num, :user_id
])
    end
end
