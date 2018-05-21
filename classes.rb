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
