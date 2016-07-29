class RidesController < ApplicationController


  def new
    @planets = SwapiApi.new.planet


  end

  def type
    RideStyle.new.get_age + RideStyle.new.get_color
  end

  def show

    if params["pick_up"] == params["drop_off"]
      @transport = type + SwapiApi.new.get_vehicle
    else
      @transport = type + SwapiApi.new.get_starship
    end

    @ride = Ride.create(
      pick_up: params["pick_up"],
      drop_off: params["drop_off"],
      driver: SwapiApi.new.get_driver,
      ride: @transport,
      ticket_number: Ticket.new.get_ticket)
  end



end
