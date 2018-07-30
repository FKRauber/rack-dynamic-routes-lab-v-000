class application

  @@items = [Item.new("Apples",5.23), (Item.new("Oranges",2.43))]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.find{|item| item.name == item_name}
        resp.write "#{self.price}"
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end

end
