json.extract! route, :id, :numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop, :created_at, :updated_at
json.url route_url(route, format: :json)
