 require 'git'
 require 'logger'
 
g  = Git.open('.', :log => nil)#Logger.new(STDOUT))

dates = 
