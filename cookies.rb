class Cookie
  attr_accessor :name, :descr, :price, :img
  def initialize(name, descr, price, img_url)
    @name = name
    @descr = descr
    @price = price
    @img = img_url
    @type = 'cookie'
  end
end

@cookie_sugar = Cookie.new(
  "Diabetes Sugar Cookies",
  "Have a dose of diabetes with our sugar cookies, made up of 95\% pure sugar.",
  "$3.00",
  "./img/cookie_sugar.jpg"
  )
@cookie_chocolate = Cookie.new(
  "5lb Chocolate Cookie",
  "Guaranteed to help you never lose those last 5 lbs you've been working so hard on.",
  "3.00",
  "./img/cookie_chocolate.jpg"
  )
@cookie_caramel = Cookie.new(
  "Root Canal Caramel Cookie",
  "Drizzled with caramel, be sure to credit us the next time you visit your dentist!",
  "$3.00",
  "./img/cookie_caramel_macaron.jpg"
  )