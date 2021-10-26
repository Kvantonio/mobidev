class Drink
  def initialize(arr)
    @arr = arr
  end

  def item_in_stock
    temp = []
    @arr.each { |item| temp << item[:name] if item[:quantity_by_size].length > 0 }
    temp
  end

  def afforbadle
    temp = []
    @arr.each { |item| temp << item if item[:price] < 50 }
    temp
  end

  def out_of_stock
    temp = []
    @arr.each { |item| temp << item if item[:quantity_by_size].length == 0 }
    temp
  end

  def how_much_left(name)
    @arr.each { |item| return item[:quantity_by_size] if item[:name] == name }
  end

  def total_stock(name)
    sum = 0
    @arr.each { |item| item[:quantity_by_size].each { |k, v| sum += v } }
    sum
  end
end

inventory = [
  { price: 125.00, name: "Cola", quantity_by_size: { l033: 3, l05: 7, l1: 8, l2: 4 } },
  { price: 40.00, name: "Pepsi", quantity_by_size: {} },
  { price: 39.99, name: "Water", quantity_by_size: { l033: 1, l2: 4 } },
  { price: 70.00, name: "Juice", quantity_by_size: { l033: 7, l05: 2 } }
]

d = Drink.new(inventory)

print d.item_in_stock
puts
puts "----------------------"
print d.afforbadle
puts
puts "----------------------"
print d.out_of_stock
puts
puts "----------------------"
print d.how_much_left("Cola")
puts
puts "----------------------"
print d.total_stock("Cola")

