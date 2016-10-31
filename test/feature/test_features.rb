require 'test_helper'

class TestFeatures < ActionController::TestCase
  include ActiveJob::TestHelper
  
  setup do
    /*setup - might require more */ 
    @resource = resources(:one)
  end
  
  test "like resource without any likes yet" do
    resource = resources(:one)

    visit resources_path
    assert page.has_content? resource.name

    find_button(id: "resourceLike-#{habit.id}").click

    # resource should have score 1
    assert_equal 1, habit.score
  end
  
  test "useless test" do
    assert 1, 1
  end

end