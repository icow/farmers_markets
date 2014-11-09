class Market < ActiveRecord::Base

	def friendly
		self.market_name.strip.downcase.gsub(' ', '-').gsub('"', '')
	end

	def to_param
		friendly
	end	

end
