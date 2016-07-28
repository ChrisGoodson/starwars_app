class Ride < ApplicationRecord


attr_reader :full_price
# before_create :randomize_ride
  

#   def randomize_ride
#     @ticket_number = get_ticket

  # end


  def get_ticket

    list = (0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a + (0..9).to_a + (0..9).to_a + (0..9).to_a + ("a".."z").to_a

    ticket_number = Array.new(15) do
                      list.sample
                       end.join('')
  end





end
