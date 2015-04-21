class HomeController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def view_cart
  	@cart = find_cart
  	puts session[:cart]
  end

  def add_to_cart
  	item = Item.find(params[:id])
  	if(session[:cart] != nil)
  		@cart = session[:cart]
  	else
  		session[:cart] = Cart.new
  		@cart = session[:cart]
  	end
  	#@cart = find_cart
  	@cart.add_item(item)
  end

  def empty_cart
  	@cart = find_cart
  	session[:cart] = nil
  	flash[:notice] = "Cart was emptied"
  	redirect_to "http://localhost:3000"
  end

  private 

  	def find_cart
  		if (session[:cart] != nil)
  			return session[:cart]
  		else
  			session[:cart] = Cart.new
  		end
  		return session[:cart]
  	end

end
