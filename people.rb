class Person

  attr_accessor :name

  def greet
    puts "Hi! My name is #{@name}."
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

Chris = Instructor.new
Chris.name = "Chris"
Chris.greet

Cristina = Student.new
Cristina.name = "Cristina"
Cristina.greet
