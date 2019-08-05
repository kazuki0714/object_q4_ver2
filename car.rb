# parent class
class Car
  attr_accessor :type, :speed, :price, :capacity, :height, :passenger

  @@total_price = 0 # 合計金額
  @@total_count = 0 # 合計台数

  def initialize(type, speed,  price, capacity, height, passenger)
    @type = type
    @speed = speed
    @price = price
    @capacity = capacity
    @height = height
    @passenger = passenger
    @@total_price += price
    @@total_count += 1
  end
  
  def equipment
    %w[アクセル ブレーキ]
  end

  def self.total_price
    @@total_price
  end

  def self.average_price
    @@total_price / @@total_count unless @@total_count == 0

  end

  def ride
    if @passenger < @capacity
      @passenger += 1
      @speed *= 0.95
    end
  end

  def drop
    if @passenger > 0
      @passenger += 1
      @speed /= 0.95
    end
  end

end
