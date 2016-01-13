class Rover
  attr_accessor :xcoordinate
  attr_accessor :ycoordinate
  attr_accessor :direction

  def read_instruction
  end

  def move
  end

  def turn(turn_instruction)
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
    else
    end
  end

end
