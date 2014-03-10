require './lib/parcels'

@parcels = []

  def main_menu
    puts "Press 'n' to calculate a new shipping cost"
    puts "Press 'o' to display your current shipping costs"
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
    l = gets.chomp.to_i
    puts "What is the width of your package?"
    w = gets.chomp.to_i
    puts "what is the height of your package?"
    h = gets.chomp.to_i

    parcel = Parcel.new(l, w, h)
    @parcels << parcel
    puts "Here is your cost!\n"
    puts "$" + parcel.cost_to_ship.to_s
    main_menu
  end

  def list_shipping_costs
    puts "Here is a list of all your shipping estimates:"
    @parcels.each_with_index do |parcel, index|
      puts "Package # " + (index+1).to_s + " =$" + parcel.cost_to_ship.to_s
    end
    main_menu
  end

main_menu
