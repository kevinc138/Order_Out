class CartItem 
	attr_reader :product, :quantity

	
	def initialize(prod)
		@product = prod
		@quantity = 1
	end
	
	def increment_quantity
		@quantity += 1
	end
	
	def name
		return @product.name
	end
	
	def price
		return @product.price*@quantity
	end
	
	
end