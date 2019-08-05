# ferrari car
require_relative 'car'

class Ferrari < Car

  def lift_up
    @is_lift = true
    @speed *= 0.8
    @height += 40
  end

  def lift_down
    return unless @is_lift
    @speed /= 0.8
    @height -= 40
    @is_lift = false
  end


end
