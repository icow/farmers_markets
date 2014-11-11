class Market < ActiveRecord::Base
	require 'madison'

	def friendly
		self.market_name.strip.downcase.gsub(' ', '-').gsub('"', '')
	end

	def to_param
		friendly
	end	

	def harvest
		# puts self.attributes.values.includes?('Y')
		items = []
		self.attributes.each do |key, value|
			items << key if value == 'Y'
		end
		items.map{|i| i.gsub('_', ' ')}
	end

	# def city_state
	# 	"#{self.city}, #{self.state_abbrev}"
	# end

	# pg_search_scope :search_details, against: [:name, :description]
	# pg_search_scope :city_search, against: {market: [:city]}

	def latlong
		[self.y.to_f, self.x.to_f]
	end

end
