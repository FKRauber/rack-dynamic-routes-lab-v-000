class application

  @@items = [Item.new("Apples",5.23), (Item.new("Oranges",2.43))]

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