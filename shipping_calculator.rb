require './lib/parcels'

@cost = []
@numberarr = []

  def main_menu
    puts "Press 'n' to calculate a new shipping cost"
    puts "Press 'o' to display your current shipping costs"
    # puts "Press 'a' to add another package"
    puts "Press 'x' to exit."

    main_choice = gets.chomp
    if main_choice == 'n'
      add_dimensions
    elsif main_choice == 'o'
      list_shipping_costs
    elsif main_choice == 'x'
      puts "Good bye"
    else
      puts "Please try again"
      main_menu
    end
  end


  def add_dimensions
    puts "What is the length of your package?"
    length = gets.chomp.to_i
    puts "What is the width of your package?"
    width = gets.chomp.to_i
    puts "what is the height of your package?"
    height = gets.chomp.to_i

    parcel = Parcel.new(length, width, height)
    @cost << parcel.cost_to_ship
    puts "Here is your cost!\n"
    puts parcel.cost_to_ship
    main_menu
  end

  def list_shipping_costs
    puts "Here is a list of all your shipping estimates:"
    @cost.each_with_index do |estimate, index|
      puts "Package # " + (index+1).to_s + " =$" + estimate.to_s
    end
    main_menu
  end

main_menu
