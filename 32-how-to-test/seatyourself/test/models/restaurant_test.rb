require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  def test_restaurant_is_invalid_without_name
    # arrange
    restaurant = Restaurant.create(opening_hour: 12, closing_hour: 23)

    # act
    valid = restaurant.valid?

    # assert
    assert_equal(valid, false)
  end

  def test_restaurant_is_invalid_without_opening_hour
    restaurant = Restaurant.create(name: "Chez Bitmaker", closing_hour: 23)

    # act
    is_restaurant_valid = restaurant.valid?

    # assert false
    refute(is_restaurant_valid)
  end

  def test_restaurant_is_invalid_without_closing_hour
    # arrange
    restaurant = Restaurant.create(name: "Chez Bitmaker", opening_hour: 10)
    # act
    valid = restaurant.valid?
    # assert
    assert_equal(valid, false)
  end

  def test_restaurant_is_available_when_empty_during_opening_hours
    # arrange
    restaurant = Restaurant.create(name: "Chez Bitmaker", opening_hour: 10, closing_hour: 22, capacity: 100)
    time = 1.day.from_now.beginning_of_day + 13.hours
    number_of_people = 4

    # act
    is_it_available = restaurant.available?(number_of_people, time)
    # assert
    assert_equal(is_it_available, true)
  end

  def test_restaurant_is_available_when_under_capacity_during_opening_hours
    # arrange
    restaurant = Restaurant.create(name: "Chez Bitmaker", opening_hour: 10, closing_hour: 22, capacity: 100)
    number_of_people = 4
    time = 1.day.from_now.beginning_of_day + 13.hours
    user = User.create(name: "Natalie", email: "natalie@bitmakerlabs.com")
    reservation1 = Reservation.create(user_id: user.id, restaurant_id: restaurant.id, people: 4, begin_time: time)
    reservation2 = Reservation.create(user_id: user.id, restaurant_id: restaurant.id, people: 2, begin_time: time)

    # act
    is_available = restaurant.available?(number_of_people, time)
    # assert
    assert_equal(is_available, true)
  end

  def test_restaurant_is_available_later_same_day
  end

  def test_restaurant_is_unavailable_in_the_past
  end

  def test_restaurant_is_unavailable_when_full
  end

  def test_restaurant_is_unavailable_before_opening
  end

  def test_restaurant_is_available_at_opening
  end

  def test_restaurant_is_unavailable_at_closing_time
  end

  def test_restaurant_is_unavailable_past_closing_time
  end

end
