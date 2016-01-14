module Turn
  def turn(instruction)
      if
          instruction == "L" && @direction == "N"
          @direction = "W"
        elsif
          instruction == "R" && @direction == "N"
          @direction = "E"
        elsif
          instruction == "L" && @direction == "E"
          @direction = "N"
        elsif
          instruction == "R" && @direction == "E"
          @direction = "S"
        elsif
          @direction == "S" && instruction == "L"
          @direction = "E"
        elsif
          @direction == "S" && instruction == "R"
          @direction = "W"
        elsif
          @direction == "W" && instruction == "L"
          @direction = "S"
        elsif
          @direction == "W" && instruction == "R"
          @direction = "N"
      end
  end
end

module Move
  def move(x_min,x_max,y_min,y_max)
    if @direction == "N" && @ycoordinate < y_max
        @ycoordinate += 1
      elsif @direction == "E" && @xcoordinate < x_max
        @xcoordinate += 1
      elsif @direction == "S" && @ycoordinate > y_min
        @ycoordinate -= 1
      elsif @direction == "W" && @xcoordinate > x_min
        @xcoordinate -= 1
      else
        puts "That would take the rover out of bounds!"
    end
  end
end

class Rover
  include Turn
  include Move

  attr_accessor :name
  attr_accessor :xcoordinate
  attr_accessor :ycoordinate
  attr_accessor :direction

  def read_instruction(plateau_size, start_position, moveinstruction)
    #Set boundaries for the plateau (rover will stop at boundaries)
    x_min = 0
    x_max = plateau_size[0].to_i
    y_min = 0
    y_max = plateau_size[2].to_i

    #Set start position for Rover instance
    @xcoordinate = start_position[0].to_i
    @ycoordinate = start_position[2].to_i
    @direction = start_position[4]

    moveinstruction.each do |instruction|
      if
          instruction == "L" || instruction == "R"
            turn(instruction)
        elsif
          instruction == "M"
            move(x_min,x_max,y_min,y_max)
        else
          puts "Not a valid instruction!"
      end
    end

    puts "#{@name} moved from #{start_position[0]} #{start_position[2]} #{start_position[4]} to #{@xcoordinate} #{@ycoordinate} #{@direction}."

  end
end

Rover1 = Rover.new
Rover1.name = "Rover1"
Rover2 = Rover.new
Rover2.name = "Rover2"

puts "Please enter the plateau size (x,y):"
plateau_size = "5 5"
# plateau_size = gets.chomp
plateau_size = plateau_size.split("")

puts "Please enter Rover1's start position:"
start_position1 = "1 2 N"
# start_position1 = gets.chomp
start_position1 = start_position1.split("")

puts "Please enter Rover1's movement instructions (rover will stop at boundaries of plateau):"
move_1 = "LMLMLMLMM"
# move_1 = gets.chomp
move_1 = move_1.split("")

puts "Please enter Rover2's start position:"
start_position2 = "3 3 E"
# start_position2 = gets.chomp
start_position2 = start_position2.split("")

puts "Please enter Rover2's movement instructions (rover will stop at boundaries of plateau):"
move_2 = "MMRMMRMRRM"
# move_2 = gets.chomp
move_2 = move_2.split("")

Rover1.read_instruction(plateau_size, start_position1, move_1)
Rover2.read_instruction(plateau_size, start_position2, move_2)
