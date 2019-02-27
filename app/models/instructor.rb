class Instructor
attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end



  #searches all boating tests to see if there is an existing test with this student and test name, and passing if so. Creates a passing test if not.
  def pass_student(student, test_name)
     matching_test = BoatingTest.all.find do |test|
       (test.student == student) && (test.name == test_name)
     end
     if matching_test != nil
       matching_test.status = "passed"
       matching_test
      else
        BoatingTest.new(student, test_name, "passed", self)
      end
  end


#searches all boating tests to see if there is an existing test with this student and test name, and failing if so. Creates a failing test if not.
  def fail_student(student, test_name)
    matching_test = BoatingTest.all.find do |test|
      (test.student == student) && (test.name == test_name)
    end
    if matching_test != nil
      matching_test.status = "failed"
      matching_test
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end


  def self.all
    @@all
  end

end
