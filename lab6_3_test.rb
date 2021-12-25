# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'lab6_3_main'

# Comment
class TestFunc < MiniTest::Unit::TestCase
  attr_reader :my_lambda_sin, :my_lambda_tan

  def after_setup
    @my_lambda_sin = ->(coordx) { coordx * Math.sin(coordx) }
    @my_lambda_tan = ->(coordx) { Math.tan(coordx) }
  end

  def test_one_func_one
    assert_in_delta(scale(200, &my_lambda_sin), 2 * scale(100) { |coordx| coordx * Math.sin(coordx) }, 0.01)
  end

  def test_two_func_one
    assert_in_delta(scale(300, &my_lambda_sin), 1.5 * scale(200) { |coordx| coordx * Math.sin(coordx) }, 0.01)
  end

  def test_one_func_two
    assert_in_delta(scale(180, &my_lambda_tan), 3.6 * scale(50) { |coordx| Math.tan(coordx) }, 0.01)
  end

  def test_two_func_two
    assert_in_delta(scale(100, &my_lambda_tan), 40 * scale(2.5) { |coordx| Math.tan(coordx) }, 0.01)
  end
end
