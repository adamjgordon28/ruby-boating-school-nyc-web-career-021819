class Student
  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end



  #adds boating test by self(ojbect), test name (string) and instructor (object)
  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

#takes in a string and returns a student object
  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

#gives the float value of all passed tests divided by all taken tests for this student
 def grade_percentage
   all_tests = BoatingTest.all.select do |test|
     test.student == self
   end
   passed_tests = all_tests.select do |test|
     test.status == "passed"
   end
   passed_tests.length.to_f/all_tests.length.to_f
 end


 def self.all
   @@all
 end

end
