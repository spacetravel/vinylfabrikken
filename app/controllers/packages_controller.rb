class PackagesController < ApplicationController

	def new

		@package = Package.new
			
	    respond_to do |format|
	      format.html # index.html.erb
	    end
	end

	def create
		@package = Package.new(params[:package])
		@package.save!
		redirect_to controller: 'orders', action: 'new', package_id: @package.id
	end
end
