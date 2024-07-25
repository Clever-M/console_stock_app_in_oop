class ProductService
  @@products = []

  def self.all
    @@products
  end

  def self.add(product)
    @@products << product
  end
end
