module OrdersHelper

	def get_info_text(keyword)
	    return InfoText.where('keyword = ?', keyword).first
	end

	def calculate_matrices(record_qty)
		return (record_qty / 1000).ceil
	end

end
