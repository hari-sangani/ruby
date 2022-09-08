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
    "Total Order: #{@order}\n" +
    "Total Amount: #{@tot_amt}\n" +   
    "Minimum Order: #{@min_order}\n" + 
    "Maximum Order: #{@max_order}\n" + 
    "Average Order: #{@avg_order}\n" + 
    "======================\n" + 
    "1 Create New Order\n" + 
    "2 Print Day Details\n" +
    "3 Print Month Details\n" +
    "How may I help you?(1, 2, 3 or quit)"

  end

  def choose
    @order = 0
    @amt = []
    # @order_hash = {"Order" => @order, "Amt" => @amt, "Min" => 0, "Max" => 0, "Avg" => 0 }
    @order_details = {}
    while @user_choose = gets.chomp do
      case @user_choose
      when '1'
        @tot_amt = 0
        puts "Creating new order..."
        @new_order = gets.chomp.split(' ')
        
        # if @order_details.key?@new_order[0]
        # else
          @order_details.store(@new_order[0], @new_order[1].to_i)
          @order += 1
          @amt.push(@new_order[1].to_i)
          @amt.sort!
          @min_order = @amt[0]
          @max_order = @amt[@amt.length - 1]
          puts "#{@amt}"

          # @amt.collect { |i| @tot_amt += @amt[i] }  #---> not working
          
          i = 0
          while i < @amt.length do
            @tot_amt += @amt[i]
            i += 1
          end
          @avg_order = @tot_amt / @amt.length
        # end
        display_msg
        
      when '2'
        puts 'Enter day : '
        @day = gets.chomp
        if @order_details.key?(@day)
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
