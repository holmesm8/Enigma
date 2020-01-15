require_relative './test_helper'
require './lib/date_gen'

class DateGenTest < Minitest::Test

  def setup
    @date1 = DateGen.new
  end

  def test_it_exists
    assert_instance_of DateGen, @date1
  end

  def test_it_can_return_todays_date
    # DateGen.expects(:current_date).returns("011320")
    expected = Date.today.strftime("%m%d%y")
    assert_equal expected, DateGen.current_date
  end
end
