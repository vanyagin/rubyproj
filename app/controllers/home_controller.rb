class HomeController <ApplicationController

  def index
    @categories = Category.all
  end

  def choose_category
    @category = Category.find_by_id params[:id]
    @product = Product.all.select { |p| p.category_id == @category.id }
  end

  def choose_product
    @product = Product.find_by_id params[:id]
  end

end