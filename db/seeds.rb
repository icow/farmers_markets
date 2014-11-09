# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv' 

csv = File.read('/Users/mjordan/Downloads/data-configured.csv', encoding: "iso-8859-1:UTF-8")
data = CSV.parse(csv, headers: true)

data.each do |row|  
  puts "========================"
  market = row.to_hash
  puts market
  Market.create(market)
  puts "========================"
end