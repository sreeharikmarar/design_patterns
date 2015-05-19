require_relative "company"
require_relative "employee"

require "test/unit"
 
class TestObseverPattern < Test::Unit::TestCase
 
  def test_simple
    company_1 = Company.new("abc",50)
	  company_2 = Company.new("abc",60)

		employee_1 = Employee.new("sam")
		employee_2 = Employee.new("tom")

	
    assert_equal([employee_1], company_1.add_observer(employee_1) )
    assert_equal([employee_1,employee_2], company_1.add_observer(employee_2) )
    assert_equal(true, company_1.change_price(60) )
    assert_equal(false, company_1.change_price(60) )
    assert_equal([employee_1], company_1.delete_observer(employee_2) )

  end
 
end