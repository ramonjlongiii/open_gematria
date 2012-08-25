require 'test_helper'

class QblTreeOfLivesControllerTest < ActionController::TestCase
  setup do
    @qbl_tree_of_life = qbl_tree_of_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qbl_tree_of_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qbl_tree_of_life" do
    assert_difference('QblTreeOfLife.count') do
      post :create, qbl_tree_of_life: { 777: @qbl_tree_of_life.777, magicalplane: @qbl_tree_of_life.magicalplane, owner: @qbl_tree_of_life.owner, qblpath: @qbl_tree_of_life.qblpath }
    end

    assert_redirected_to qbl_tree_of_life_path(assigns(:qbl_tree_of_life))
  end

  test "should show qbl_tree_of_life" do
    get :show, id: @qbl_tree_of_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qbl_tree_of_life
    assert_response :success
  end

  test "should update qbl_tree_of_life" do
    put :update, id: @qbl_tree_of_life, qbl_tree_of_life: { 777: @qbl_tree_of_life.777, magicalplane: @qbl_tree_of_life.magicalplane, owner: @qbl_tree_of_life.owner, qblpath: @qbl_tree_of_life.qblpath }
    assert_redirected_to qbl_tree_of_life_path(assigns(:qbl_tree_of_life))
  end

  test "should destroy qbl_tree_of_life" do
    assert_difference('QblTreeOfLife.count', -1) do
      delete :destroy, id: @qbl_tree_of_life
    end

    assert_redirected_to qbl_tree_of_lives_path
  end
end
