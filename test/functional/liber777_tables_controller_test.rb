require 'test_helper'

class Liber777TablesControllerTest < ActionController::TestCase
  setup do
    @liber777_table = liber777_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liber777_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liber777_table" do
    assert_difference('Liber777Table.count') do
      post :create, liber777_table: { 777_table_name: @liber777_table.777_table_name, 777_table_number: @liber777_table.777_table_number }
    end

    assert_redirected_to liber777_table_path(assigns(:liber777_table))
  end

  test "should show liber777_table" do
    get :show, id: @liber777_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liber777_table
    assert_response :success
  end

  test "should update liber777_table" do
    put :update, id: @liber777_table, liber777_table: { 777_table_name: @liber777_table.777_table_name, 777_table_number: @liber777_table.777_table_number }
    assert_redirected_to liber777_table_path(assigns(:liber777_table))
  end

  test "should destroy liber777_table" do
    assert_difference('Liber777Table.count', -1) do
      delete :destroy, id: @liber777_table
    end

    assert_redirected_to liber777_tables_path
  end
end
