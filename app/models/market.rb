class Market < ActiveRecord::Base
	# pg_search_scope :search_details, against: [:name, :description]
	# pg_search_scope :city_search, against: {market: [:city]}


	def latlong
		puts "=========================================================================="
		puts "#{self.x}, #{self.y}"	
		puts "=========================================================================="
	end





end
