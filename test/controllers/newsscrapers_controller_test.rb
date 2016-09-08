require 'test_helper'

class NewsscrapersControllerTest < ActionController::TestCase
  setup do
    @newsscraper = newsscrapers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsscrapers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsscraper" do
    assert_difference('Newsscraper.count') do
      post :create, newsscraper: { body: @newsscraper.body, image_url: @newsscraper.image_url, time: @newsscraper.time, title: @newsscraper.title }
    end

    assert_redirected_to newsscraper_path(assigns(:newsscraper))
  end

  test "should show newsscraper" do
    get :show, id: @newsscraper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsscraper
    assert_response :success
  end

  test "should update newsscraper" do
    patch :update, id: @newsscraper, newsscraper: { body: @newsscraper.body, image_url: @newsscraper.image_url, time: @newsscraper.time, title: @newsscraper.title }
    assert_redirected_to newsscraper_path(assigns(:newsscraper))
  end

  test "should destroy newsscraper" do
    assert_difference('Newsscraper.count', -1) do
      delete :destroy, id: @newsscraper
    end

    assert_redirected_to newsscrapers_path
  end
end
