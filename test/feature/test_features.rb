require 'test_helper'

class TestFeatures < ActionController::TestCase
  setup do
    /*setup - might require more */ 
    @resource = resources(:one)
  end
  
  test "useless test" do
    assert 1, 1
  end
end