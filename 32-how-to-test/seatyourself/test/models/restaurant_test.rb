require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_restaurant_is_available_when_empty_during_opening_hours
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
  end

  def test_restaurant_is_unavailable_when_full
  end

  def test_restaurant_is_unavailable_before_opening
  end

  def test_restaurant_is_unavailable_half_an_hour_before_closing
  end
  
end
