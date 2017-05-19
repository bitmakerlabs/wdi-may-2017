def pay(cost)
  puts "**** paying $#{ cost }"
end

def order_pizza(topping)

  cost = 10

  case topping
  when :pepperoni
    cost += 2
  when :sausage
    cost += 4
  end

  return cost
end

cost = order_pizza(:sausage)
pay(cost)
