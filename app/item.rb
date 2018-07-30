class Item
  attr_accessor :name, :price

  def initialize(name,price)
    @name = name
    @price = price
  end

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/self.name"
        resp.write "#{self.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
