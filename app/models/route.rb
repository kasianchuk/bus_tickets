class Route < ApplicationRecord
  has_many :tickets

  accepts_nested_attributes_for(:tickets)
  # scope :by_ticket, -> (tickets) { joins(:tickets).where(tickets: {route_id: tickets}) }
  scope :by_departure, -> (departure) { where(departure: departure) }
  scope :by_date, -> (departure_date) { where('departure_date = ?', departure_date) }

end
