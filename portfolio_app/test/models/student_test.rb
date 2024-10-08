require "test_helper"

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should aise error when saving student without first name" do
    assert_raises ActiveRecord::RecordInvalid do 
      Student.create!(last_name: "Doe", school_email: "JohnDoe@msudenver.edu", major:"CS")
    end
  end

  test"should not alllow student with duplicate school email" do
    #this retrieves the student with the key 'one' from students.yml
    student = students(:one)

    assert_raises ActiveRecord::RecordInvalid do
      Student.create!(first_name:"John", last_name:"Doe", school_email:"johndoe@msudenver.edu",major:"CSI")
    end
  end

  test "should save student with valid attributes" do
    student = Student.create!(first_name:"John", last_name:"Doe", school_email:"johndoe@msudenver.edu", major:"CS")
    assert student.persisted?,"Student was not persisted"
    end
  end