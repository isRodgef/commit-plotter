 require 'git'
 require 'logger'
 
 
 
g  = Git.open('.', :log => nil)#Logger.new(STDOUT))

dates = g.log.map{|commit| commit.author.date.strftime("%m-%d-%y")}



dates_total = Hash.new(0) 
dates.each{|d| dates_total[d] =+ 1}

puts(dates_total)
