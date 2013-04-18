class FrontpageController < ApplicationController
  def index
  	@news = News.limit(3)
  end
end
