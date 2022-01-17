class Student
  @@students = []
  @@counter = 0
  @@demo_data = [
                  {name: "H" , last_name: "N" , age: 24 , phone: "000200000"} ,
                  {name: "yes" , last_name: "N" , age: 24 , phone: "000200000"} ,
                  {name: "no" , last_name: "N" , age: 24 , phone: "000200000"}
                ]
  attr_accessor :name, :last_name, :age, :phone
  attr_writer :shcool_id
  attr_writer :class_id
  def initialize(**arg)
    @@students.push(self)
    @@counter += 1
    @name = arg[:name]
    @last_name = arg[:last_name]
    @age = arg[:age]
    @phone = arg[:phone]
    @full_name = full_name
    @shcool_id = arg[:shcool_id]
  end
  def self.all
    @@students
  end

  def self.dummy_data
    @@demo_data
  end






  def self.counter
    @@counter
  end
  def full_name
    fully_name
    # "#{@name} #{@last_name}"
  end
  def demo
    set_values
    p @name
  end

  def self.update_sc
    Student.new(shcool_id: 23)
  end
  private
  def set_values
    @name = "Hard values"
  end
  def self.demo_data
    @@demo = [ "hello" , " yes" , "no"]
  end
  def fully_name
    "#{@name} #{@last_name}"
  end



end