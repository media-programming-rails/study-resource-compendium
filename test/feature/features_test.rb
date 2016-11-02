require 'test_helper'

class FeaturesTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper
  
  test "like resource without any likes yet" do
    resource = resources(:one)
    visit resources_path
    assert page.has_content? resource.name

    # resource should have score 0
    assert_equal 0, resource.score

    find_button(id: "resourceLike-#{resource.id}").click

    assert page.has_content? "+"
    # resource should have score 1
    assert_equal 1, resource.score
  end
end