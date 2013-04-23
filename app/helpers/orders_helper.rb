module OrdersHelper

	def get_info_text(keyword)
	    return InfoText.where('keyword = ?', keyword).first
	end

end
