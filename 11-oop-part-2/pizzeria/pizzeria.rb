require_relative 'pizza.rb'

class Pizzeria
  @@pizzas = []

  def initialize
    @open = true
    @number_of_pizzas = 0
  end

  def self.all_pizzas
    @@pizzas
  end

  def order(toppings, size)
    if open?
      new_pizza = Pizza.new(toppings, size)

      new_pizza.bake

      3.times do
        new_pizza.cut
      end

      @number_of_pizzas += 1

      @@pizzas << new_pizza

      # Return a pizza
      new_pizza
    else
      false
    end
  end

  def open
    @open = true
  end

  def open?
    @open
  end

  def close
    @open = false
  end

  def restock
    if @number_of_pizzas == 5 && !open?
      @number_of_pizzas = 0
      true
    else
      false
    end
  end
end
