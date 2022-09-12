# Shop Order & Analytics Application

class ShopOrder
  def initialize
    puts "======================\n" + 
    "Welcome to My Shop\n" + 
    "======================\n" +
    "Today Details\n" +
    "-----------------\n" + 
    "Total Order: \n" +
    "Total Amount: \n" +   
    "Minimum Order: \n" + 
    "Maximum Order: \n" + 
    "Average Order: \n" + 
    "======================\n" + 
    "1 Create New Order\n" + 
    "2 Print Day Details\n" +
    "3 Print Month Details\n" +
    "How may I help you?(1, 2, 3 or quit)"
  end
  
  def display_msg
    puts "\n#{@new_order[0]} Details\n" +
    "-----------------\n" + 
    "Total Order: #{@amt.length}\n" +
    "Total Amount: #{@amt.sum}\n" +   
    "Minimum Order: #{@amt.min}\n" + 
    "Maximum Order: #{@amt.max}\n" + 
    "Average Order: #{@amt.sum / @amt.length}\n" + 
    "======================\n" + 
    "1 Create New Order\n" + 
    "2 Print Day Details\n" +
    "3 Print Month Details\n" +
    "How may I help you?(1, 2, 3 or quit)"
  end

  def choose
    @amt = []
    @order_details = {}
    while @user_choose = gets.chomp do
      case @user_choose
      when '1'
        puts "Creating new order..."
        @new_order = gets.chomp.split(' ')

        if @order_details.key?(@new_order[0])
          @order_details[@new_order[0]] = @amt.push(@new_order[1].to_i)
        else
          @amt.clear
          @order_details[@new_order[0]] = @amt.push(@new_order[1].to_i)
        end
        puts "#{@order_details}"
        display_msg
        
      when '2'
        puts 'Enter day : '
        @day = gets.chomp
        if @order_details.key?(@day)
          @amt = @order_details[@day]
          display_msg
        else
          puts "Order Not Found!!"  
        end

      when '3'
        puts "in 3"

      else
        break
      end
    end
  end
end

order = ShopOrder.new
order.choose