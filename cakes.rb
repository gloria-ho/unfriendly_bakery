class Cake
  attr_accessor :name, :descr, :price, :img
  def initialize(name, descr, price, img_url)
    @name = name
    @descr = descr
    @price = price
    @img = img_url
    @type = 'cake'
  end
end

@cake_chocolate = Cake.new(
  "Devil's Chocolate Cake",
  "Have an important event coming up? Make sure to have a slice or three of our chocolate cake made with 90\% butter - to ensure that your perfect outfit will never fit right!",
  "$9.00",
  "./img/cake_chocolate.jpg",
  )
@cake_iced = Cake.new(
  "Cavity Iced Cake",
  "Miss your dentist? Not for long! Have a couple slices of our iced cake and you'll be back in that dentist chair in no time!",
  "9.00",
  "./img/cake_iced.jpg"
  )
@cake_pie = Cake.new(
  "This Cake is a Lie",
  "But hey, at least there's pie!",
  "9.00",
  "./img/cake_pie.jpg"
  )