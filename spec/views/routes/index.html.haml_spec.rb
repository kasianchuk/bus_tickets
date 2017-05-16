require 'rails_helper'

RSpec.describe "routes/index", type: :view do
  before(:each) do
    assign(:routes, [
      Route.create!(
        :numb_of_seats => 2,
        :departure => "Departure",
        :departure_date => "",
        :departure_time => "",
        :arrival => "",
        :arrival_date => "",
        :arrival_time => "",
        :nonstop => false
      ),
      Route.create!(
        :numb_of_seats => 2,
        :departure => "Departure",
        :departure_date => "",
        :departure_time => "",
        :arrival => "",
        :arrival_date => "",
        :arrival_time => "",
        :nonstop => false
      )
    ])
  end

  it "renders a list of routes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Departure".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
