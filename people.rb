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

Chris.teach
Cristina.learn

Cristina.teach

#Christina can't teach because she isn't able to see the teach method in the Instructor class.
