class ArticlesController < ApplicationController

	def show
		@article = News.find(params[:id])
	end
end
