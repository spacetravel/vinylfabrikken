class DeliveryInfosController < ApplicationController

	def new
		@delivery_info = DeliveryInfo.new
	end
end
