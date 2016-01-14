def convert_to_array(str)
  str = str.split(" ")
end

class Rover
  attr_accessor :xcoordinate
  attr_accessor :ycoordinate
  attr_accessor :direction

  def read_instruction
    #This method should take the input data and convert the strings input by
    #the user to arrays. These arrays should then be used to compute the
    #direction and position changes of each rover.
  end

  def move(direction)
    if direction == "N"
      ycoordinate += 1
    elsif direction == "E"
      xcoordinate += 1
    elsif
      direction == "S"
      ycoordinate -= 1
    elsif direction == "W"
      xcoordinate -= 1
  end

  def turn(direction, turn_instruction)
    if direction == "N" && turn_instruction == "L"
      direction = "W"
    elsif
      direction == "N" && turn_instruction == "R"
      direction = "E"
    elsif
      direction == "E" && turn_instruction == "L"
      direction = "N"
    elsif
      direction == "E" && turn_instruction == "R"
      direction = "S"
    elsif
      direction == "S" && turn_instruction == "L"
      direction = "E"
    elsif
      direction == "S" && turn_instruction == "R"
      direction = "W"
    elsif
      direction == "W" && turn_instruction == "L"
      direction = "S"
    elsif
      direction == "W" && turn_instruction == "R"
      direction == "N"
    end
  end
end

Rover1 = Rover.new
Rover2 = Rover.new

puts "Please enter the plateau size (x,y):"
plateau_size = gets.chomp
convert_to_array(plateau_size)
x_min = 0
x_max = plateau_size[0]
y_min = 0
y_max = plateau_size[1]

puts "Please enter Rover1's start position (x=#{x_min} to #{x_max}, y=#{y_min} to #{y_max}, start direction = N/E/S/W):"
start_position1 = gets.chomp
convert_to_array(start_position1)
