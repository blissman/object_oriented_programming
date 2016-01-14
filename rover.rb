def convert_to_array(str)
  str = str.split("")
end

class Rover

  attr_accessor :name
  attr_accessor :xcoordinate
  attr_accessor :ycoordinate
  attr_accessor :direction

  def read_instruction(plateau_size, start_position, moveinstruction)
    #Set boundaries for the plateau (rover will stop at boundaries)
    x_min = 0
    x_max = plateau_size[0]
    y_min = 0
    y_max = plateau_size[2]

    #Set start position for Rover instance
    @xcoordinate = start_position[0]
    @ycoordinate = start_position[2]
    @direction = start_position[4]

    moveinstruction.each { |instruction|
      if instruction == "L" || "R"
        turn(instruction)
      elsif instruction == "M"
        move(instruction)
      else
        puts "Not a valid instruction!"
      end
    }

    puts "#{@name} moved from #{start_position[0]} #{start_position[2]} #{start_position[4]} to #{@xcoordinate} #{@ycoordinate} #{@direction}."
    #This method should take the input data and convert the strings input by
    #the user to arrays. These arrays should then be used to compute the
    #direction and position changes of each rover.

    def move(direction)
      if @direction == "N"
        @ycoordinate += 1
      elsif direction == "E"
        @xcoordinate += 1
      elsif
        @direction == "S"
        @ycoordinate -= 1
      elsif direction == "W"
        @xcoordinate -= 1
      end

      if
        @ycoordinate > y_max
        @ycoordinate = y_max
      elsif
        @ycoordinate < y_min
        @ycoordinate = y_min
      end

      if
        @xcoordinate > x_max
        @xcoordinate = x_max
      elsif
        @xcoordinate < x_min
        @xcoordinate = x_min
      end
    end

    def turn(turn_instruction)
      if
        @direction == "N" && turn_instruction == "L"
        @direction = "W"
      elsif
        @direction == "N" && turn_instruction == "R"
        @direction = "E"
      elsif
        @direction == "E" && turn_instruction == "L"
        @direction = "N"
      elsif
        @direction == "E" && turn_instruction == "R"
        @direction = "S"
      elsif
        @direction == "S" && turn_instruction == "L"
        @direction = "E"
      elsif
        @direction == "S" && turn_instruction == "R"
        @direction = "W"
      elsif
        @direction == "W" && turn_instruction == "L"
        @direction = "S"
      elsif
        @direction == "W" && turn_instruction == "R"
        @direction == "N"
      end
    end
  end
end

Rover1 = Rover.new
Rover1.name = "Rover1"
Rover2 = Rover.new
Rover2.name = "Rover2"

puts "Please enter the plateau size (x,y):"
plateau_size = gets.chomp
convert_to_array(plateau_size)

puts "Please enter Rover1's start position:"
start_position1 = gets.chomp
convert_to_array(start_position1)

puts "Please enter Rover1's movement instructions (rover will stop at boundaries of plateau):"
move_1 = gets.chomp
convert_to_array(move_1)

puts "Please enter Rover2's start position:"
start_position2 = gets.chomp
convert_to_array(start_position2)

puts "Please enter Rover2's movement instructions (rover will stop at boundaries of plateau):"
move_2 = gets.chomp
convert_to_array(move_2)

Rover1.read_instruction(plateau_size, start_position1, move_1)
Rover2.read_instruction(plateau_size, start_position2, move_2)
