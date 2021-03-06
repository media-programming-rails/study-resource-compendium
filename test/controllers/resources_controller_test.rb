require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: { category_id: @resource.category_id, description: @resource.description, last_modified: @resource.last_modified, link: @resource.link, name: @resource.name }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should get edit" do
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    patch :update, id: @resource, resource: { category_id: @resource.category_id, description: @resource.description, last_modified: @resource.last_modified, link: @resource.link, name: @resource.name }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
