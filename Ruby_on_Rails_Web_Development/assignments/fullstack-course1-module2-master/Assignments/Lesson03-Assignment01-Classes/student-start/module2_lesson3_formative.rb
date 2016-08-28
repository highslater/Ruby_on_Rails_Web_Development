
class Person
  # getters and setters for first_name and last_name
  attr_accessor :first_name, :last_name

  @@people = []

  # "CONSTRUCTOR"
  def initialize(first_name,last_name)
    self.first_name = first_name 
    self.last_name = last_name
    # or
    # @first_name = first_name
    # @last_name = last_name

    @@people << self
  end

  def self.search(last_name)
    @@people.select {|person| person.last_name == last_name}
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith

=begin

The overall goal of this assignment is to implement a Ruby class with
  - class attribute(s)
  - class method(s)
  - initializer method(s)
  - instance attribute(s)
  - instance method(s)

  The functional goal of the assignment is to write a `Person` class that
will maintain state thru instance and class attributes and provide access
thru instance and class methods.

    1. Write a `Person` class with a 

      - `first_name`
      - `last_name`

    2. Track each instance of `Person`.

    3. Search for a `Person` by `last_name`.


1. Implement all parts of this assignment within the module2_lesson3_formative.rb 
file in the root directory of your solution. The grader will load this specific
file from this location.
 
2. Your script must contain a `Person` class

3. The `Person` class must have

  * a first_name and last_name attribute with public accessors
  for setting and getting the attributes
  * a class attribute called `people` that holds an array of objects
  * an `initialize` method to initialize each instance
  * a `to_s` method to return a formatted string of the person's name
  * a `search` method to locate all people with a matching `last_name`
  
4. The `Person` `initialize` method must

  * accept two parameters (first_name and last_name) and use them to
  initialize the first_name, and last_name instance attributes.
  * insert the created instance (self) into the `people` class variable

5. The `Person` `to_s` instance method must

  * return a formatted string as `first_name(space)last_name`

6. The `Person` `search` class method must

  * accept a `last_name` parameter
  * search the `people` class attribute for instances with the same `last_name`
  * return a collection of matching instances


=end
