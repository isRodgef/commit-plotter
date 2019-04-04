 require 'git'
 require 'logger'
 
 
 
g  = Git.open('.', :log => nil)#Logger.new(STDOUT))

dates = g.log.map{|commit| commit.author.date.strftime("%m-%d-%y")}

puts(dates)
