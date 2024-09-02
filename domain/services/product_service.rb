class ProductService

  def initialize(repo, file)
      @repo = repo
      @file = file
  end

  def all
    data = @repo.read(@file)
    products = []
    data.each do |datum|
      products << Product.new(datum)
    end
    products
  end

  def add(product)
    product_hash = self.turn_into_hash(product)

    @repo.add(@file, product_hash)
  end

  def update(product)
    data = @repo.read(@file)

    product_hash = data.find{ |datum| datum["id"].to_i == product.id }

    product_hash["name"]        = product.name
    product_hash["description"] = product.description
    product_hash["price"]       = product.price
    product_hash["quantity"]    = product.quantity

    @repo.record(@file, data)
  end

  private

  def turn_into_hash(product)
    product.instance_variables.each_with_object({}) do |var, hash|
      hash[var.to_s.delete("@")] = product.instance_variable_get(var)
    end
  end
end
