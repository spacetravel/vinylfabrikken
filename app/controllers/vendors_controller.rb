class VendorsController < ApplicationController

	def index

		if params[:city].nil?
			@vendors = Vendor.all
		else
			@vendors = Vendor.where("city = ?",params[:city])
		end

	end
end
