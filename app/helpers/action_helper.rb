module ActionHelper
  def add_prod(product)
    order = Order.new
    order.product = @product
    order.quantity = 1
    order.comment = ""
    order.payment = ""
    order.save
  end
end