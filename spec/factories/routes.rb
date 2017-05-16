FactoryGirl.define do
  factory :route do
    numb_of_seats 1
    departure "MyString"
    departure_date ""
    departure_time ""
    arrival ""
    arrival_date ""
    arrival_time ""
    nonstop false
  end
end
