require 'nokogiri'
require 'open-uri'

url = "http://themoneyconverter.com/rss-feed/USD/rss.xml"

data = Nokogiri::HTML(open(url))
description = data.xpath("//description")

puts "Available Exchange Rates For United States Dollar"
puts "New Zealand
Saudi
Singapore
Australia
United Arab Emirates

"
print "Enter a country: "
country= gets.chomp
country = country.split.map(&:capitalize).join(' ')
location = ['New Zealand','Saudi','Singapore','Australia','United Arab Emirates']
size = location.length

	def checkIfCountryExists(place, length,country_array)
		j=0
		for j in 0 ... length
			if place == country_array[j]
				return j
			elsif j == length -1
				return msg = "No exchange rates for this country"
			end
		end
	end
	
	def displayConversion(x,descTag,arr)
		i=0
		var = false
		
		if x.is_a? String
			return x
		else
			loop do
				if descTag[i].to_s.include? "#{arr[x]}"
						var = true
				else
					i += 1
				end
				break if  var == true
			end
			return descTag[i].text
		end
	end
	
	iter = checkIfCountryExists(country,size,location)
	puts displayConversion(iter,description,location)
	


