class Muffin
  attr_accessor :name, :descr, :price, :img
  def initialize(name, descr, price, img_url)
    @name = name
    @descr = descr
    @price = price
    @img = img_url
    @type = 'muffin'
  end
end

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