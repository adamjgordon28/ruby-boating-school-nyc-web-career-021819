class Student

  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student|student.first_name == first_name}
  end

  def grade_percentage
    student_tests = []
    passed_tests = []
    BoatingTest.all.each do |test|
      if test.student == self
        student_tests << test
      end
    end
    student_tests.each do |test|
      if test.test_status == "passed"
        passed_tests << test
      end
    end
    (passed_tests.length.to_f)/(student_tests.length.to_f)
  end

end
