require_relative 'ferrari'
require_relative 'honda'
require_relative 'nissan'

def main
  h = Honda.new("Honda", 10, 100+rand(50..100), 8, 100, 1)
  n = Nissan.new("Nissan", 10, 50+rand(1..50), 5, 100, 1)
  f = Ferrari.new("Ferrari", 100, 2_000+rand(500..1000), 2, 100, 1)

  puts "--------------乗車--------------"
  h.ride
  n.ride
  f.ride
  output_information(h,n,f)

  puts "--------------乗車--------------"
  h.ride
  n.ride
  f.ride
  output_information(h,n,f)

  puts "--------------乗車--------------"
  h.ride
  n.ride
  f.ride
  output_information(h,n,f)

  puts "--------------降車--------------"
  h.drop
  n.drop
  f.drop
  output_information(h,n,f)
end

def output_information(h,n,f)
    puts "車種\t\tHonda\t\tNissan\t\tFerrari"
    puts "価格\t\t#{h.price}\t\t#{n.price}\t\t#{f.price}"
    puts "定員\t\t#{h.capacity}\t\t#{n.capacity}\t\t#{f.capacity}"
    puts "加速\t\t#{h.speed}\t\t#{n.speed}\t\t#{f.speed}"
    puts "車高\t\t#{h.height}\t\t#{n.height}\t\t#{f.height}"
end

if __FILE__ == $0
  main
end
