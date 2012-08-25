require 'test_helper'

class QblTreesControllerTest < ActionController::TestCase
  setup do
    @qbl_tree = qbl_trees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qbl_trees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qbl_tree" do
    assert_difference('QblTree.count') do
      post :create, qbl_tree: { magicalplane: @qbl_tree.magicalplane, owner: @qbl_tree.owner, qblpath: @qbl_tree.qblpath }
    end

    assert_redirected_to qbl_tree_path(assigns(:qbl_tree))
  end

  test "should show qbl_tree" do
    get :show, id: @qbl_tree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qbl_tree
    assert_response :success
  end

  test "should update qbl_tree" do
    put :update, id: @qbl_tree, qbl_tree: { magicalplane: @qbl_tree.magicalplane, owner: @qbl_tree.owner, qblpath: @qbl_tree.qblpath }
    assert_redirected_to qbl_tree_path(assigns(:qbl_tree))
  end

  test "should destroy qbl_tree" do
    assert_difference('QblTree.count', -1) do
      delete :destroy, id: @qbl_tree
    end

    assert_redirected_to qbl_trees_path
  end
end
