# require_relative "sandwich_project/version"
# require 'pry'

require "bundler" #require everything in our gem file, so once we install 
Bundler.require   #the file we don't ghave to require those things again  

require_all './lib/sandwich_project'