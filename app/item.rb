class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  if req.path=="/items/self.name"
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
end
