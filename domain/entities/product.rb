class Product
  attr_accessor :name, :description, :price, :quantity
  attr_reader :id

  def initialize(product_hash)
    @id = product_hash["id"].to_i
    @name = product_hash["name"]
    @description = product_hash["description"]
    @price = product_hash["price"].to_f
    @quantity = product_hash["quantity"].to_i
  end
end
