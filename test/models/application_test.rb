require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  #setup do
  #  @application = applications(:one)
  #end
  
  test "should save application with company and position" do
    application = applications(:one)
    assert application.save
  end

  test "should not save application without company" do
    application = applications(:one)
    application.company = nil
    assert_not application.save
  end
  test "should not save application without position" do
    application = applications(:one)
    puts 'application.position => ' + application.position
    application.position = nil
    puts 'application.position => ' + application.position.to_s
    assert_not application.save
  end
end
