class PricesController < ApplicationController

	def index
		@prices = Price.find(:all, :order => 'name')
	end
end
