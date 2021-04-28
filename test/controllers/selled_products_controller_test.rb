require 'test_helper'

class SelledProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get selled_products_index_url
    assert_response :success
  end

  test "should get show" do
    get selled_products_show_url
    assert_response :success
  end

  test "should get new" do
    get selled_products_new_url
    assert_response :success
  end

  test "should get create" do
    get selled_products_create_url
    assert_response :success
  end

  test "should get edit" do
    get selled_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get selled_products_update_url
    assert_response :success
  end

end
