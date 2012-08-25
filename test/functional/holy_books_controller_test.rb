require 'test_helper'

class HolyBooksControllerTest < ActionController::TestCase
  setup do
    @holy_book = holy_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:holy_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create holy_book" do
    assert_difference('HolyBook.count') do
      post :create, holy_book: { author: @holy_book.author, edition: @holy_book.edition, isbn: @holy_book.isbn, publisheddate: @holy_book.publisheddate, publisher: @holy_book.publisher, title: @holy_book.title }
    end

    assert_redirected_to holy_book_path(assigns(:holy_book))
  end

  test "should show holy_book" do
    get :show, id: @holy_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @holy_book
    assert_response :success
  end

  test "should update holy_book" do
    put :update, id: @holy_book, holy_book: { author: @holy_book.author, edition: @holy_book.edition, isbn: @holy_book.isbn, publisheddate: @holy_book.publisheddate, publisher: @holy_book.publisher, title: @holy_book.title }
    assert_redirected_to holy_book_path(assigns(:holy_book))
  end

  test "should destroy holy_book" do
    assert_difference('HolyBook.count', -1) do
      delete :destroy, id: @holy_book
    end

    assert_redirected_to holy_books_path
  end
end
