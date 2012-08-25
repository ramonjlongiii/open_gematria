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
      post :create, qbl_tree: { 777entry: @qbl_tree.777entry, 777entry_id: @qbl_tree.777entry_id, owner: @qbl_tree.owner, path: @qbl_tree.path, plane: @qbl_tree.plane }
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
    put :update, id: @qbl_tree, qbl_tree: { 777entry: @qbl_tree.777entry, 777entry_id: @qbl_tree.777entry_id, owner: @qbl_tree.owner, path: @qbl_tree.path, plane: @qbl_tree.plane }
    assert_redirected_to qbl_tree_path(assigns(:qbl_tree))
  end

  test "should destroy qbl_tree" do
    assert_difference('QblTree.count', -1) do
      delete :destroy, id: @qbl_tree
    end

    assert_redirected_to qbl_trees_path
  end
end
