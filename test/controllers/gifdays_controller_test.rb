require 'test_helper'

class GifdaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gifday = gifdays(:one)
  end

  test "should get index" do
    get gifdays_url
    assert_response :success
  end

  test "should get new" do
    get new_gifday_url
    assert_response :success
  end

  test "should create gifday" do
    assert_difference('Gifday.count') do
      post gifdays_url, params: { gifday: { body: @gifday.body, companyname: @gifday.companyname, daynumber: @gifday.daynumber, title: @gifday.title } }
    end

    assert_redirected_to gifday_url(Gifday.last)
  end

  test "should show gifday" do
    get gifday_url(@gifday)
    assert_response :success
  end

  test "should get edit" do
    get edit_gifday_url(@gifday)
    assert_response :success
  end

  test "should update gifday" do
    patch gifday_url(@gifday), params: { gifday: { body: @gifday.body, companyname: @gifday.companyname, daynumber: @gifday.daynumber, title: @gifday.title } }
    assert_redirected_to gifday_url(@gifday)
  end

  test "should destroy gifday" do
    assert_difference('Gifday.count', -1) do
      delete gifday_url(@gifday)
    end

    assert_redirected_to gifdays_url
  end
end
