require 'test_helper'

class RarchitecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rarchitecture = rarchitectures(:one)
  end

  test "should get index" do
    get rarchitectures_url
    assert_response :success
  end

  test "should get new" do
    get new_rarchitecture_url
    assert_response :success
  end

  test "should create rarchitecture" do
    assert_difference('Rarchitecture.count') do
      post rarchitectures_url, params: { rarchitecture: { description: @rarchitecture.description, link: @rarchitecture.link, location: @rarchitecture.location } }
    end

    assert_redirected_to rarchitecture_url(Rarchitecture.last)
  end

  test "should show rarchitecture" do
    get rarchitecture_url(@rarchitecture)
    assert_response :success
  end

  test "should get edit" do
    get edit_rarchitecture_url(@rarchitecture)
    assert_response :success
  end

  test "should update rarchitecture" do
    patch rarchitecture_url(@rarchitecture), params: { rarchitecture: { description: @rarchitecture.description, link: @rarchitecture.link, location: @rarchitecture.location } }
    assert_redirected_to rarchitecture_url(@rarchitecture)
  end

  test "should destroy rarchitecture" do
    assert_difference('Rarchitecture.count', -1) do
      delete rarchitecture_url(@rarchitecture)
    end

    assert_redirected_to rarchitectures_url
  end
end
