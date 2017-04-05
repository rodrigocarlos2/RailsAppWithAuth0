require 'test_helper'

class ObrigationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obrigation = obrigations(:one)
  end

  test "should get index" do
    get obrigations_url
    assert_response :success
  end

  test "should get new" do
    get new_obrigation_url
    assert_response :success
  end

  test "should create obrigation" do
    assert_difference('Obrigation.count') do
      post obrigations_url, params: { obrigation: { content: @obrigation.content, title: @obrigation.title } }
    end

    assert_redirected_to obrigation_url(Obrigation.last)
  end

  test "should show obrigation" do
    get obrigation_url(@obrigation)
    assert_response :success
  end

  test "should get edit" do
    get edit_obrigation_url(@obrigation)
    assert_response :success
  end

  test "should update obrigation" do
    patch obrigation_url(@obrigation), params: { obrigation: { content: @obrigation.content, title: @obrigation.title } }
    assert_redirected_to obrigation_url(@obrigation)
  end

  test "should destroy obrigation" do
    assert_difference('Obrigation.count', -1) do
      delete obrigation_url(@obrigation)
    end

    assert_redirected_to obrigations_url
  end
end
