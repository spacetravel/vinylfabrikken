class FrontpageController < ApplicationController
  def index
  	@plugs = Plug.limit(3).reverse_order
  end
end
