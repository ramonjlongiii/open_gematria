require 'test_helper'

class HolyBookVersesControllerTest < ActionController::TestCase
  setup do
    @holy_book_verse = holy_book_verses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:holy_book_verses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create holy_book_verse" do
    assert_difference('HolyBookVerse.count') do
      post :create, holy_book_verse: { chapter: @holy_book_verse.chapter, holy_book_id: @holy_book_verse.holy_book_id, versenumber: @holy_book_verse.versenumber, versetext: @holy_book_verse.versetext }
    end

    assert_redirected_to holy_book_verse_path(assigns(:holy_book_verse))
  end

  test "should show holy_book_verse" do
    get :show, id: @holy_book_verse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @holy_book_verse
    assert_response :success
  end

  test "should update holy_book_verse" do
    put :update, id: @holy_book_verse, holy_book_verse: { chapter: @holy_book_verse.chapter, holy_book_id: @holy_book_verse.holy_book_id, versenumber: @holy_book_verse.versenumber, versetext: @holy_book_verse.versetext }
    assert_redirected_to holy_book_verse_path(assigns(:holy_book_verse))
  end

  test "should destroy holy_book_verse" do
    assert_difference('HolyBookVerse.count', -1) do
      delete :destroy, id: @holy_book_verse
    end

    assert_redirected_to holy_book_verses_path
  end
end
