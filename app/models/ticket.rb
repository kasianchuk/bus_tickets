class Ticket < ApplicationRecord
  belongs_to :route

   validates :chair_num, numericality: {greater_than: 0}
   validates :chair_num, uniqueness: true
end
