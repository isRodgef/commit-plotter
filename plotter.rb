require 'git'
require 'logger'
require 'gruff'
 
chart =  Gruff:: Line.new 
g  = Git.open('.', :log => nil)#Logger.new(STDOUT))

dates = g.log.map{|commit| commit.author.date.strftime("%m-%d-%y")}

dates_total = Hash.new(0) 
dates.each{|d| dates_total[d] +=  1}

chart.labels = {}
index = 0
data
dates_total.each do |year, freq|
	chart.labels[index] = year
	index += 1
end

puts(chart.labels)
 
