class RidesController < ApplicationController

  def about
    render plain: "Welcome to Ipsum's Fair! Come for our rides, stay for our hotdogs."
  end

  def lorem_ride
    render plain: "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
  end

end
