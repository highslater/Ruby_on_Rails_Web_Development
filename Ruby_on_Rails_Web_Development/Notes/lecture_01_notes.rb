
module SayMyName
    attr_accessor :name

    def print_name
        puts "Name: #{@name}"
    end

end

class Person
    include SayMyName
end

class Friends
    include SayMyName
end

person = Person.new()
person.name = "Heizenberg"
person.print_name()
friend = Friends.new()
friend.name = "Jessie"
friend.print_name()
puts "Hello my name is #{person.name} and my #{Friends.name.downcase} name is #{friend.name}."
    