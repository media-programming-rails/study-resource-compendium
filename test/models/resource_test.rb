require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  setup do 
     @resource = resources(:one)
     @resource2 = resources(:two)
  end
  
  test "resources start with zero score" do
    assert_equal 0, @resource.score
  end
  
  test "resources have a description" do 
    @resource2.description = "This is a new description"
    assert_equal "This is a new description", @resource2.description
  end
end
