module MarketsHelper

	def format_domain(url)
		url.gsub('www.', '').gsub(' ', '').gsub('http://', '').gsub('https://', '').downcase
	end

	def format_times(times)
		times.gsub(';', '<br>')
	end

end
