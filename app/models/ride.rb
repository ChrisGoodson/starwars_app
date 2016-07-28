class Ride < ApplicationRecord


attr_reader :full_price


  def get_ticket

    list = (0..9).to_a + ("a".."z").to_a + ("A".."Z").to_a + (0..9).to_a + (0..9).to_a + (0..9).to_a + (0..9).to_a + ("a".."z").to_a

    ticket_number = Array.new(15) do
                      list.sample
                       end.join('')
  end





end
