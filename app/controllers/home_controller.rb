class HomeController <ApplicationController

  def index
    @categories = Category.all
  end

  def choose_category
    @category = Category.find_by_id params[:id]
  end

end