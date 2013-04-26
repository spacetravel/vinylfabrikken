class FaqsController < ApplicationController
	def index
		@faq_categories = FaqCategory.all
	end
end
