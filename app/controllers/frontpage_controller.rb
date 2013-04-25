class FrontpageController < ApplicationController
  def index
  	@plugs = Plug.limit(3)
  end
end
