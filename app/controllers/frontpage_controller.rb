class FrontpageController < ApplicationController
  def index
  	@plugs = Plug.limit(3).reverse_order
  	@sliders = Slider.all
  	@featurettes = Featurette.all
  end
end