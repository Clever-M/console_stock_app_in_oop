class Product
  attr_accessor :name, :description, :price, :quantity
  attr_reader :id

  def initialize(product_hash)
    @id = product_hash[:id]
    @name = product_hash[:name]
    @description = product_hash[:description]
    @price = product_hash[:price]
    @quantity = product_hash[:quantity]
  end
end
