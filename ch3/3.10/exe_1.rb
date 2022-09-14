# frozen_string_literal: true

# Write a program to get a list of all file/directory names from the given.
class FileList
  def initialize
    root = '/home/scpl'
    Dir.chdir(root)
    puts "You are at root location : #{Dir.pwd}"
    puts 'Enter the Path you wants to navigate to : '
    @path = gets.chomp
  end

  def list
    Dir.chdir(@path)
    puts "You have been navigated to : #{Dir.pwd}"
    Dir['*'].each { |i| puts i }
  rescue StandardError
    puts 'No such Path exists!'
  end
end

my_list = FileList.new
my_list.list
