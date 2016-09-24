class CartItemsController < ApplicationController

  def index
    @cart_items = current_user.cart_items
  end

  def create
    product = Product.find(params[:id])
    if current_user.cart_items.where(product_id: product.id).any?
      cart_item = current_user.cart_items.find_by(product_id: product.id)
      cart_item.update(quantity: cart_item.quantity + 1)
    else
      current_user.cart_items.create(product_id: product.id, quantity: 1)
    end

    redirect_to action: :index
  end

end
