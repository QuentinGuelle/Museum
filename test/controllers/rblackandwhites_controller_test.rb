require 'test_helper'

class RblackandwhitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rblackandwhite = rblackandwhites(:one)
  end

  test "should get index" do
    get rblackandwhites_url
    assert_response :success
  end

  test "should get new" do
    get new_rblackandwhite_url
    assert_response :success
  end

  test "should create rblackandwhite" do
    assert_difference('Rblackandwhite.count') do
      post rblackandwhites_url, params: { rblackandwhite: { description: @rblackandwhite.description, link: @rblackandwhite.link, location: @rblackandwhite.location } }
    end

    assert_redirected_to rblackandwhite_url(Rblackandwhite.last)
  end

  test "should show rblackandwhite" do
    get rblackandwhite_url(@rblackandwhite)
    assert_response :success
  end

  test "should get edit" do
    get edit_rblackandwhite_url(@rblackandwhite)
    assert_response :success
  end

  test "should update rblackandwhite" do
    patch rblackandwhite_url(@rblackandwhite), params: { rblackandwhite: { description: @rblackandwhite.description, link: @rblackandwhite.link, location: @rblackandwhite.location } }
    assert_redirected_to rblackandwhite_url(@rblackandwhite)
  end

  test "should destroy rblackandwhite" do
    assert_difference('Rblackandwhite.count', -1) do
      delete rblackandwhite_url(@rblackandwhite)
    end

    assert_redirected_to rblackandwhites_url
  end
end
