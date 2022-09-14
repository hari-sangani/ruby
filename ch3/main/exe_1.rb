# frozen_string_literal: true

# Shop Order & Analytics Application

# Define Shop Order Class
class ShopOrder
  def initialize
    @order = {}
    @orders = []
    @message = 'Today'
    puts "======================\n" \
         "Welcome to My Shop\n" \
         '======================'
    puts display_msg
  end

  def display_msg
    "#{@message} Details\n" \
      "-----------------\n" \
      "Total Order: #{@orders.length}\n" \
      "Total Amount: #{@orders.sum}\n" \
      "Minimum Order: #{@orders.min}\n" \
      "Maximum Order: #{@orders.max}\n" \
      "Average Order: #{@orders.sum / (@orders.length.zero? ? 1 : @orders.length)}\n" \
      "======================\n" \
      "1 Create New Order\n" \
      "2 Print Day Details\n" \
      "3 Print Month Details\n" \
      'How may I help you?(1, 2, 3 or quit)'
  end

  def choose
    loop do
      case gets.chomp
      when '1'
        puts 'Creating new order...'
        value = gets.chomp
        @orders = process_order(value)
      when '2'
        puts 'Enter day : '
        value = gets.chomp
        process_day(value)
      when '3'
        puts 'Enter month : '
        value = gets.chomp
        process_month(value)
      else
        break
      end
      puts display_msg
    end
  end

  def process_order(value)
    date, amount = value.split(' ')
    day, month, year = date.split('-')

    @message = value
    @order[year] = {} if @order[year].nil?
    @order[year][month] = {} if @order[year][month].nil?
    @order[year][month][day] = [] if @order[year][month][day].nil?

    @order[year][month][day] << amount.to_i
  end

  def process_day(value)
    day, month, year = value.split('-')

    @message = value
    @orders =
      if @order[year].nil? || @order[year][month].nil? || @order[year][month][day].nil?
        []
      else
        @order[year][month][day]
      end
  end

  def process_month(value)
    month, year = value.split('-')

    @message = value
    @orders =
      if @order[year].nil? || @order[year][month].nil?
        []
      else
        @order[year][month].values.flatten
      end
  end
end

order = ShopOrder.new
order.choose
