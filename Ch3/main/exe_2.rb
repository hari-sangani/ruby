# Website has some Validation Constraints of dimension to accept Images from users. 
# Minimum dimension of the image is L x L.
# User has N images of different sizes.
# Dimention of image denoted by W x H (Width x Height)

class Dimention
  @@min_l = 200
  @@img_width = Array[]
  @@img_height = Array[]

  def initialize()
    i = 0
    while i < $num_of_img do
      puts "Enter width and height of image #{i + 1}: "
      @user_input = gets.chomp.split(' ')
      @@img_width.push(@user_input[0].to_i)
      @@img_height.push(@user_input[1].to_i)
      i += 1 
    end
  end

  def validity()
    i = 0
    while i < $num_of_img do
      if @@img_width[i] < @@min_l || @@img_height[i] < @@min_l
        puts "Image not Valid"
      elsif @@img_width[i] == @@img_height[i]
        puts "Perfect"
      else
        puts "Crop and Accept"
      end
      i += 1 
    end
  end
end

puts "Enter the number of image you wants to upload : "
$num_of_img = gets.chomp.to_i
obj = Dimention.new()
obj.validity()