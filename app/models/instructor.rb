class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Instructor.all
    @@all
  end

  def pass_student(student, test_name)
    student_tests = []
    matching_tests = []
    BoatingTest.all.each do |test|
      if test.student == student
        student_tests << test
      end
    end
    student_tests.each do |test|
      if test.test_name == test_name
        matching_tests << test
      end
    end
    if matching_tests.length > 0
      matching_tests.each do |test|
        test.test_status = "passed"
      end
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end


  def fail_student(student, test_name)
    student_tests = []
    matching_tests = []
    BoatingTest.all.each do |test|
      if test.student == student
        student_tests << test
      end
    end
    student_tests.each do |test|
      if test.test_name == test_name
        matching_tests << test
      end
    end
    if matching_tests.length > 0
      matching_tests.each do |test|
        test.test_status = "failed"
      end
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end


end
