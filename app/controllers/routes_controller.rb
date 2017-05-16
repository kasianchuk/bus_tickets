class RoutesController < InheritedResources::Base

  private

    def route_params
      params.require(:route).permit(:numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop)
    end
end
