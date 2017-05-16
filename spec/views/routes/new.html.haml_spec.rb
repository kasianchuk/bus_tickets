require 'rails_helper'

RSpec.describe "routes/new", type: :view do
  before(:each) do
    assign(:route, Route.new(
      :numb_of_seats => 1,
      :departure => "MyString",
      :departure_date => "",
      :departure_time => "",
      :arrival => "",
      :arrival_date => "",
      :arrival_time => "",
      :nonstop => false
    ))
  end

  it "renders new route form" do
    render

    assert_select "form[action=?][method=?]", routes_path, "post" do

      assert_select "input#route_numb_of_seats[name=?]", "route[numb_of_seats]"

      assert_select "input#route_departure[name=?]", "route[departure]"

      assert_select "input#route_departure_date[name=?]", "route[departure_date]"

      assert_select "input#route_departure_time[name=?]", "route[departure_time]"

      assert_select "input#route_arrival[name=?]", "route[arrival]"

      assert_select "input#route_arrival_date[name=?]", "route[arrival_date]"

      assert_select "input#route_arrival_time[name=?]", "route[arrival_time]"

      assert_select "input#route_nonstop[name=?]", "route[nonstop]"
    end
  end
end
