require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
squidward = Student.new("Squidward")
sandy = Student.new("Sandy")

puff = Instructor.new("Mrs. Puff")
krabbs = Instructor.new("Mr. Krabbs")
plankton = Instructor.new("Plankton")

spongebob.add_boating_test("Dodge the Electric Eel","failed", puff)
spongebob.add_boating_test("Jellyfish! Drive away!", "passed", plankton)
patrick.add_boating_test("Escape the Shark!", "failed", krabbs)
sandy.add_boating_test("Don't Hit the Krusty Krab!", "passed", krabbs)
spongebob.add_boating_test("Avoid the cones!", "failed", krabbs)
squidward.add_boating_test("Play Clarinet While Driving", "failed", puff)

puff.fail_student(patrick, "Buckle Up!")
plankton.pass_student(sandy, "Get me the Secret Krabby Patty Formula!")
krabbs.fail_student(sandy, "I can't believe you gave away my formuler. You fail the driving test!!")





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
