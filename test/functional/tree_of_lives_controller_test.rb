require 'test_helper'

class TreeOfLivesControllerTest < ActionController::TestCase
  setup do
    @tree_of_life = tree_of_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tree_of_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tree_of_life" do
    assert_difference('TreeOfLife.count') do
      post :create, tree_of_life: { tree_path_correspondence: @tree_of_life.tree_path_correspondence, tree_path_number: @tree_of_life.tree_path_number, tree_sphere_name: @tree_of_life.tree_sphere_name }
    end

    assert_redirected_to tree_of_life_path(assigns(:tree_of_life))
  end

  test "should show tree_of_life" do
    get :show, id: @tree_of_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tree_of_life
    assert_response :success
  end

  test "should update tree_of_life" do
    put :update, id: @tree_of_life, tree_of_life: { tree_path_correspondence: @tree_of_life.tree_path_correspondence, tree_path_number: @tree_of_life.tree_path_number, tree_sphere_name: @tree_of_life.tree_sphere_name }
    assert_redirected_to tree_of_life_path(assigns(:tree_of_life))
  end

  test "should destroy tree_of_life" do
    assert_difference('TreeOfLife.count', -1) do
      delete :destroy, id: @tree_of_life
    end

    assert_redirected_to tree_of_lives_path
  end
end
