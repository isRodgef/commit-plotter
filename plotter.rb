require 'git'
require 'logger'
require 'gruff'
 

 
chart =  Gruff:: Line.new 
g  = Git.open(ARGV[0], :log => nil)#Logger.new(STDOUT))

dates = g.log.map{|commit| commit.author.date.strftime("%m-%d-%y")}.reverse

dates_total = Hash.new(0) 
dates.each{|d| dates_total[d] +=  1}

chart.labels = {}
index = 0
data = [] 
dates_total.each do |year, freq|
	chart.labels[index] = year
	index += 1
	data << freq
end



chart.data :commit ,data
chart.write(ARGV[1]) 
#puts(chart.labels)
#puts(data)
