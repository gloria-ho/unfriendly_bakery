require 'sinatra'
require './classes'

cookie_sugar = Cookie.new(
  "Diabetes Sugar Cookies",
  "Have a dose of diabetes with our sugar cookies, made up of 95\% pure sugar.",
  "$3.00",
  "./img/cookie_sugar.jpg"
  )
cookie_chocolate = Cookie.new(
  "5lb Chocolate Cookie",
  "Guaranteed to help you never lose those last 5 lbs you've been working so hard on.",
  "3.00",
  "./img/cookie_chocolate.jpg"
  )
cookie_caramel = Cookie.new(
  "Root Canal Caramel Cookie",
  "Drizzled with caramel, be sure to credit us the next time you visit your dentist!",
  "$3.00",
  "./img/cookie_caramel_macaron.jpg"
  )

cake_chocolate = Cake.new(
  "Devil's Chocolate Cake",
  "Have an important event coming up? Make sure to have a slice or three of our chocolate cake made with 90\% butter - to ensure that your perfect outfit will never fit right!",
  "$9.00",
  "./img/cake_chocolate.jpg",
  )
cake_iced = Cake.new(
  "Cavity Iced Cake",
  "Miss your dentist? Not for long! Have a couple slices of our iced cake and you'll be back in that dentist chair in no time!",
  "9.00",
  "./img/cake_iced.jpg"
  )
cake_pie = Cake.new(
  "This Cake is a Lie",
  "But hey, at least there's pie!",
  "9.00",
  "./img/cake_pie.jpg"
  )

cupcake_almond = Muffin.new(
  "Anaphylactic Almond Cupcake",
  "Allergic to almonds? Make sure to take a big slice of our almond cake!",
  "9.00",
  "./img/cupcake_almond.jpg"
  )
cupcake_pretzel = Muffin.new(
  "Chipped Tooth Pretzel Cupcake",
  "Try our pretzel cupcake, stuff full of too-hard-to-bite morsels of old pretzels, guaranteed to chip a tooth or two!",
  "9.00",
  "./img/cupcake_pretzel.jpg"
  )

cupcake_red_velvet = Muffin.new(
  "Red Velvet Not-Really-A-Muffin",
  "Becuase who the heck wants a muffin when you can have cupcakes!?",
  "9.00",
  "./img/cupcake_red_velvet.jpg"
  )


get ('/') do

  erb(:index)
end

get ('/about') do
  erb(:about)
end

get('/cookies') do
  @sugar = cookie_sugar
  @chocolate = cookie_chocolate
  @caramel = cookie_caramel
  erb(:cookies)
end

get('/cakes') do
  @chocolate = cake_chocolate
  @iced = cake_iced
  @pie = cake_pie
  erb(:cakes)
end

get('/muffins') do
  @almond = cupcake_almond
  @pretzel = cupcake_pretzel
  @red_velvet = cupcake_red_velvet
  erb(:muffins)
end

get('/subscribe') do
  erb(:subscribe)
end

get('/visit') do
  erb(:visit)
end