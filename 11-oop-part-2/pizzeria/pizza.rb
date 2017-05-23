class Pizza
  attr_accessor :toppings, :size
  attr_reader :cuts, :baked

  def initialize(toppings, size)
    @toppings = toppings
    @size = size
    @cuts = 0
    @baked = false
  end

  def bake
    if @baked == false
      @baked = true
    end
  end

  def cut
    if @baked
      if @cuts < 3
        @cuts += 1
      end
    end

    @cuts
  end

  def eat?
    if @baked == true && @cuts == 3
      true
    else
      false
    end
  end

  # Reader
  # def toppings
  #   @toppings
  # end

  # Writer
  # def toppings=(new_topping)
  #   @toppings = new_topping
  # end
end
