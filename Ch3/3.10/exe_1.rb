# Write a program to get a list of all file/directory names from the given.

class FileList
  def initialize()
    root = "/home/scpl"
    Dir.chdir(root)
    puts "You are at root location : #{Dir.pwd}"
  end

  def list(path)
    begin
      Dir.chdir(path)
      puts "You have been navigated to : #{Dir.pwd}"
      puts "List of file/directory are : #{Dir["*"]}"
    rescue
      puts "No such Path exists!"
    end
  end
end

my_list = FileList.new
puts "Enter the Path you wants to navigate to : "
user_path = gets.chomp
my_list.list(user_path)