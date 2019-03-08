require 'test_helper'

class BlackandwhitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blackandwhite = blackandwhites(:one)
  end

  test "should get index" do
    get blackandwhites_url
    assert_response :success
  end

  test "should get new" do
    get new_blackandwhite_url
    assert_response :success
  end

  test "should create blackandwhite" do
    assert_difference('Blackandwhite.count') do
      post blackandwhites_url, params: { blackandwhite: {  } }
    end

    assert_redirected_to blackandwhite_url(Blackandwhite.last)
  end

  test "should show blackandwhite" do
    get blackandwhite_url(@blackandwhite)
    assert_response :success
  end

  test "should get edit" do
    get edit_blackandwhite_url(@blackandwhite)
    assert_response :success
  end

  test "should update blackandwhite" do
    patch blackandwhite_url(@blackandwhite), params: { blackandwhite: {  } }
    assert_redirected_to blackandwhite_url(@blackandwhite)
  end

  test "should destroy blackandwhite" do
    assert_difference('Blackandwhite.count', -1) do
      delete blackandwhite_url(@blackandwhite)
    end

    assert_redirected_to blackandwhites_url
  end
end
