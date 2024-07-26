require 'byebug'
class ProductService
  @file = "db/products.json"
  def self.all
    data = JsonRepository.read(@file)
    products = []
    data.each do |datum|
      products << Product.new(datum)
    end
  end

  def self.add(product)
    product_hash = self.turn_into_hash(product)

    JsonRepository.add(@file, product_hash)
  end

  private

  def self.turn_into_hash(product)
    product.instance_variables.each_with_object({}) do |var, hash|
      debugger
      hash[var.to_s.delete("@")] = product.instance_variable_get(var)
    end
  end
end
