class Student
  @@students = []
  @@counter = 0
  attr_accessor :phone
  attr_reader :name, :age
  def initialize(**arg)
    @name = arg[:name]
    @age = arg[:age]
    @phone = arg[:phone]
    @address = arg[:address]
    @@students.push(self)
    @@counter += 1
  end
  def say_hello
    p self
    "Hello are u here ? "
  end

  def name
    @name
  end
  def name=(value)
    @name = value
  end

  def self.say_hello
    p self
    "Not now !"
  end

  def self.all
    @@students
  end

  def self.counts
    @@counter
  end

  def show_your_private
    hello_here[:age]
  end

  private
  def hello_here
    { name: "Yes it's Private !" , age: 40 }
  end
end
