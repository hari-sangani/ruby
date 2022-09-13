# Website has some Validation Constraints of dimension to accept Images from users. 
# Minimum dimension of the image is L x L.
# User has N images of different sizes.
# Dimention of image denoted by W x H (Width x Height)

class Dimention
  def initialize
    @img_width = []
    @img_height = []
    
    puts "Enter the minimun image dimention : "
    @min_l = gets.chomp.to_i
    puts "Enter the number of image you wants to upload : "
    @num_of_img = gets.chomp.to_i
    
    i = 0
    while i < @num_of_img
      puts "Enter width and height of image #{i + 1}: "
      @user_input = gets.chomp.split(' ')
      @img_width.push(@user_input[0].to_i)
      @img_height.push(@user_input[1].to_i)
      i += 1 
    end
  end

  def validity
    i = 0
    while i < @num_of_img
      if @img_width[i] < @min_l or @img_height[i] < @min_l
        puts "Image not Valid"
      elsif @img_width[i] == @img_height[i]
        puts "Perfect"
      else
        puts "Crop and Accept"
      end
      i += 1 
    end
  end
end

obj = Dimention.new
obj.validity