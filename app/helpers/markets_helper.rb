module MarketsHelper

	def format_domain(url)
		if url.include?('http')
			url = URI.parse(url).host
		end
		url.sub('www.', '')
	end

	def format_times(times)
		times.gsub(';', '<br>')
	end

end
