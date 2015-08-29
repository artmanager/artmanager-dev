#!/usr/bin/env ruby

require 'colorize'
require 'git'
require 'fileutils'
require 'logger'

(Dir.entries('./projects').select {|entry| File.directory? File.join('./projects',entry) and !(entry =='.' || entry == '..') }).each do |project| 
  begin
    g = Git.open("projects/#{project}", :log => Logger.new(STDOUT))
    if g.branch.to_s == "master"
      g.pull
    else
      g.fetch
      g.merge("origin/master")
    end
    puts " [OK] ===> #{project} :: #{g.branch.to_s} "
  rescue
    puts " [ERROR] ===> #{project} "
  end
end

