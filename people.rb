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

chris = Instructor.new
chris.name = "Chris"
chris.greet

cristina = Student.new
cristina.name = "Cristina"
cristina.greet

chris.teach
cristina.learn

cristina.teach

#Christina can't teach because she isn't able to see the teach method in the Instructor class.
