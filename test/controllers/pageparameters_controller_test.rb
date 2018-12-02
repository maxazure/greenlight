require 'test_helper'

class PageparametersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pageparameter = pageparameters(:one)
  end

  test "should get index" do
    get pageparameters_url
    assert_response :success
  end

  test "should get new" do
    get new_pageparameter_url
    assert_response :success
  end

  test "should create pageparameter" do
    assert_difference('Pageparameter.count') do
      post pageparameters_url, params: { pageparameter: { notice: @pageparameter.notice, title: @pageparameter.title } }
    end

    assert_redirected_to pageparameter_url(Pageparameter.last)
  end

  test "should show pageparameter" do
    get pageparameter_url(@pageparameter)
    assert_response :success
  end

  test "should get edit" do
    get edit_pageparameter_url(@pageparameter)
    assert_response :success
  end

  test "should update pageparameter" do
    patch pageparameter_url(@pageparameter), params: { pageparameter: { notice: @pageparameter.notice, title: @pageparameter.title } }
    assert_redirected_to pageparameter_url(@pageparameter)
  end

  test "should destroy pageparameter" do
    assert_difference('Pageparameter.count', -1) do
      delete pageparameter_url(@pageparameter)
    end

    assert_redirected_to pageparameters_url
  end
end
