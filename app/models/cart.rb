class Cart
	attr_reader :items
	
	def initialize
		@items = []
	end
	
	def add_product(prod)
		#kartItem = @items.find {|item| item.product == prod}
		#if kartItem
		#	kartItem.increment_quantity
		#else
		#	@items << CartItem.new(prod)
		#end
		@items.each do |cartItem|
			if cartItem.product == prod
				cartItem.increment_quantity
				return
			end
		end
		@items << CartItem.new(prod)
	end
	
	def total_price
		return @items.sum { |item| item.price}
		
		#sum = 0
		#@items.each do |cartItem|
		#	sum = sum + cartItem.price
		#end
		#return sum
	end
end