class ProductService
  @file = "db/products.json"
  def self.all
    data = JsonRepository.read(@file)
    products = []
    data.each do |datum|
      products << Product.new(datum)
    end
    products
  end

  def self.add(product)
    product_hash = self.turn_into_hash(product)

    JsonRepository.add(@file, product_hash)
  end

  def self.update(product)
    data = JsonRepository.read(@file)
    product_hash = data.find{ |datum| datum["id"] == product.id }

    product_hash["name"]        = product.name
    product_hash["description"] = product.description
    product_hash["price"]       = product.price
    product_hash["quantity"]    = product.quantity

    JsonRepository.record(@file, data)
  end

  private

  def self.turn_into_hash(product)
    product.instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@")] = product.instance_variable_get(var)
    end
  end
end
