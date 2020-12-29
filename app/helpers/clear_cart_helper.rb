module ClearCartHelper
  def clear
    Order.delete_all

  end
end