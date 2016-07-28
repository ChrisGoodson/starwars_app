class RidesController < ApplicationController


  def new
    @planets = SwapiApi.new.planet

  end

  def type
    RideStyle.new.get_age + RideStyle.new.get_color
  end

  def show
    @drop_off = params["drop_off"]
    @pick_up = params["pick_up"]
    @driver = SwapiApi.new.get_driver
    if @drop_off == @pick_up
      @ride = type + SwapiApi.new.get_vehicle
    else
      @ride = type + SwapiApi.new.get_starship
    end
  end



end
