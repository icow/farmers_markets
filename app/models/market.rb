class Market < ActiveRecord::Base

	def friendly
		self.market_name.strip.downcase.gsub(' ', '-').gsub('"', '')
	end

	def to_param
		friendly
	end	

	# pg_search_scope :search_details, against: [:name, :description]
	# pg_search_scope :city_search, against: {market: [:city]}

	def latlong
		puts "=========================================================================="
		puts "#{self.x}, #{self.y}"	
		puts "=========================================================================="
	end

end
