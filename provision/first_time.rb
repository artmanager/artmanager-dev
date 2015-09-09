require 'colorize'
require 'git'
require 'fileutils'

# config git users
puts 'Please enter your git user name:'.light_blue
git_user_name = gets.chomp

puts 'Please enter your git user email:'.light_blue
git_user_email = gets.chomp

system("git config --global user.name \"#{git_user_name}\"")
system("git config --global user.email \"#{git_user_email}\"")

puts 'Generating ssh keys'
system 'mkdir ~/.ssh'
system 'ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa'

puts 'ssh key generated successfully'
puts File.read('/home/vagrant/.ssh/id_rsa.pub').light_blue
puts 'press enter to continue...'
gets

# removes script form bashrc
system "sed -i '/.*first_time.rb/d' ~/.bashrc"
puts 'press enter to continue...'
gets

Dir.chdir '/home/vagrant'
system 'clear'
system 'ls'
