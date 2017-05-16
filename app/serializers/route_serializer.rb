class RouteSerializer < ActiveModel::Serializer
  attributes :id, :numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop
end
